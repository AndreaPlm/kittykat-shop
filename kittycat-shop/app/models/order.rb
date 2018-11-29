class Order < ApplicationRecord
  belongs_to :user
  has_many :item_orders
  has_many :items, through: :item_orders

  def total_price()
    tot = 0.00
    item_orders.each do |item_order|
      tot += item_order.item.price.to_d * item_order.quantity
    end
    return tot
  end

  after_create :email_send, :email_admin

  private
    def email_send
      OrderMailer.order_email(self, User.find(self.user_id)).deliver_now!
    end

    def email_admin
      OrderMailer.admin_email(self, User.first).deliver_now!
    end
end
