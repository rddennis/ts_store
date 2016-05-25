class OrderConfirmation < ApplicationMailer

  def send_order_confirmation(user, order)
    @user = user
    @order = order
    mail(to: @user.email, subject: "Thanks for your Curls Unbothered Order!")
  end

end
