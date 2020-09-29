class OrderDonation
  include ActiveModel::Model
  attr_accessor  :postal_code, :city, :state_id, :address, :phone_number, :building_name, :token, :user_id, :item_id

  validates :token, presence: true

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, state_id: state_id, city: city, address: address, phone_number: phone_number, building_name: building_name, order_id: order.id)
  end
end