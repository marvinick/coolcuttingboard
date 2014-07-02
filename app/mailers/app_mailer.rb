class AppMailer < ActionMailer::Base
  def order_confirmation(order)
    @order = order
    mail to: order.email, from: "chefmarvki@seasaltdev.com", subject: "Order for next delivery day"
  end
end