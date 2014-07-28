class AppMailer < ActionMailer::Base
  def order_confirmation(order)
    @orders = order
    mail to: @orders.email, from: "chefmarvki@seasaltdev.com", subject: "Order for next delivery day"
  end

  def product_confirmation(product)
    @products = product
    mail to: @products.email, from: "chefmarvki@coolcuttingboard.com", subject: "Order for next delivery"
  end
end