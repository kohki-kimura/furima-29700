class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :nickname, presence: true
         validates :birthday, presence: true
         validates :password,format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}
         validates :first_name,:family_name,   format: { with: /\A[ぁ-んァ-ン一-龥]+\z/i}
         validates :first_name_kana,:family_name_kana,   format: { with: /\A[ァ-ン]+\z/i}
          
end