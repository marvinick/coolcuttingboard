class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @orders = Order.new(order_params)
    if @orders.save
      AppMailer.order_confirmation(@orders).deliver
      redirect_to orders_path(@orders)
    else
      render :new
    end
  end


  private

  def order_params
    params.require(:order).permit(:name, :unit, :quantity, :email, :vendor)
  end
end