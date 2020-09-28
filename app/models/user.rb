class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }

  with_options presence: true do
    validates :nickname
    validates :birthday
    validates :first_name, :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/i }
    validates :first_name_kana, :family_name_kana, format: { with: /\A[ァ-ン]+\z/i }
  end

  has_many :items
  has_many :orders
end
