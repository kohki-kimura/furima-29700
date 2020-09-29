require 'rails_helper'

RSpec.describe OrderDonation, type: :model do
  before do
    @order_donation = FactoryBot.build(:order_donation)
  end

  describe '商品購入' do
    it 'tokenとpostal_codeとstate_idとcityとaddressとphone_numberとbuilding_nameが存在すれば登録できる' do
      expect(@order_donation).to be_valid
    end
    it 'tokenが空だと登録できない' do
      @order_donation.token = nil
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include("Token can't be blank")
    end
    it 'postal_codeが空だと登録できない' do
      @order_donation.postal_code = nil
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include('Postal code is invalid')
    end
    it 'postal_codeはハイフンがないと登録できない' do
      @order_donation.postal_code = '1234567'
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include('Postal code is invalid')
    end

    it 'state_idが空だと登録できない' do
      @order_donation.state_id = nil
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include('State is not a number')
    end
    it 'cityが空だと登録できない' do
      @order_donation.city = nil
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include("City can't be blank")
    end
    it 'addressが空だと登録できない' do
      @order_donation.address = nil
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include("Address can't be blank")
    end
    it 'phone_numberが空だと登録できない' do
      @order_donation.phone_number = nil
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include('Phone number is invalid')
    end
    it 'phone_numberは12桁以上だと登録できない' do
      @order_donation.phone_number = '123456789999'
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include('Phone number is invalid')
    end
    it 'building_nameが空だと登録できない' do
      @order_donation.building_name = nil
      @order_donation.valid?
      expect(@order_donation.errors.full_messages).to include("Building name can't be blank")
    end
  end
end
