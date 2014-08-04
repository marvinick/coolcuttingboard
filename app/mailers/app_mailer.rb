class AppMailer < ActionMailer::Base
  def order_confirmation(delivery)
    @delivery = delivery
    mail to: @delivery.email, from: "chefmarvki@coolcuttingboard.com", subject: "Order for next delivery day"
  end

  def product_confirmation(product)
    @products = product
    mail to: @products.email, from: "chefmarvki@coolcuttingboard.com", subject: "Order for next delivery"
  end
end