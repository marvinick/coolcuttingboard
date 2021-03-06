class OrdersController < ApplicationController
  before_action :require_user, only: [:new, :create]

  def index
    @orders = Order.order(:created_at).reverse
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      AppMailer.order_confirmation(@order).deliver
      redirect_to orders_path(@orders)
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end


  private

  def order_params
    params.require(:order).permit(:name, :unit, :quantity, :email, :vendor, :product, :description)
  end
end