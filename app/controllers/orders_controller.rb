class OrdersController < ApplicationController
  def index
    @orders = Order.all
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


  private

  def order_params
    params.require(:order).permit(:name, :unit, :quantity)
  end
end