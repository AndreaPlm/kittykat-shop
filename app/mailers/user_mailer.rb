class UserMailer < ApplicationMailer
  default from: 'mclemorvan@gmail.com'

  def welcome_email(user)
     mail(from: "mclemorvan@gmail.com", to: user.email,
          subject: "Wecome to Kittycat!")
   end
end
