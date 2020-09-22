class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category,:condition,:fee,:day,:address

  validates :name, :description, :price, :user, :category,:condition,:fee,:day,:address, presence: true

  validates :price, format: { with: /\A[300-9999999]+\z/}

  validates :category_id, :condition_id, :fee_id, :day_id, :address_id, numericality: { other_than: 1 } 
end
