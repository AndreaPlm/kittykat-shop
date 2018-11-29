class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart

  has_many :orders
  has_one :picture

  after_create :create_cart

  def create_cart
    cart = Cart.new
    cart.user = self
    cart.save
  end

  after_create :send_email

  private
    def send_email
      UserMailer.welcome_email(self).deliver_now!
    end

end
