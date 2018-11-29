class OrderMailer < ApplicationMailer

  def order_email(order, user)
    @order = order
     mail(from: "mclemorvan@gmail.com", to: user.email,
          subject: "Thanks for your order!")
   end

   def admin_email(order, user)
     @order = order
      mail(from: "mclemorvan@gmail.com", to: user.email,
           subject: "An order has been placed on KittyCat")
    end
end
