class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :fee
  belongs_to_active_hash :day
  belongs_to_active_hash :address

  belongs_to :user

  validates :name, :description, :price, :user, :category, :condition, :fee, :day, :address, presence: true
  # validates :price, format: { with: /\A[300-9999999]+\z/}
  validates :category_id, :condition_id, :fee_id, :day_id, :address_id, numericality: { other_than: 1 } 
end
