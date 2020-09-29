class OrderDonation
  include ActiveModel::Model
  attr_accessor  :postal_code, :city, :state_id, :address, :phone_number, :building_name, :token, :user_id, :item_id

  validates :token, :city, :address, :building_name,  presence: true
  validates :state_id, numericality: { other_than: 1 }
  validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/ }
  validates :phone_number, format: { with: /\A\d{10,11}\z/ }

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, state_id: state_id, city: city, address: address, phone_number: phone_number, building_name: building_name, order_id: order.id)
  end
end