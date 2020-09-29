class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :fee
  belongs_to_active_hash :day
  belongs_to_active_hash :ship_from

  belongs_to :user
  has_one :order
  has_one_attached :image

  validates :name, :description, :user, :image, presence: true
  validates :category_id, :condition_id, :fee_id, :day_id, :ship_from_id, numericality: { other_than: 1 }
  with_options numericality: { greater_than: 299, less_than: 10_000_000 } do
    validates :price
  end
end