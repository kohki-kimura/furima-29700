class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         validates :password,format: { with: /[a-z\d]{6,}/ }
         validates :email, uniqueness: true, format: { with: /@.+/ }
         validates :first_name,:family_name,   format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ }
         validates :first_name_kana,:family_name_kana,   format: { with: /\A[ァ-ン]+\z/ }
          
end
