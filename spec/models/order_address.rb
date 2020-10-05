require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    @order_address = FactoryBot.build(:order_address)
  end

  describe '商品購入' do
    it 'tokenとpostal_codeとstate_idとcityとaddressとphone_numberとbuilding_nameが存在すれば登録できる' do
      expect(@order_address).to be_valid
    end
    it 'tokenが空だと登録できない' do
      @order_address.token = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Token can't be blank")
    end
    it 'postal_codeが空だと登録できない' do
      @order_address.postal_code = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include('Postal code is invalid')
    end
    it 'postal_codeはハイフンがないと登録できない' do
      @order_address.postal_code = '1234567'
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include('Postal code is invalid')
    end

    it 'state_idが空だと登録できない' do
      @order_address.state_id = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include('State is not a number')
    end
    it 'cityが空だと登録できない' do
      @order_address.city = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("City can't be blank")
    end
    it 'addressが空だと登録できない' do
      @order_address.address = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Address can't be blank")
    end
    it 'phone_numberが空だと登録できない' do
      @order_address.phone_number = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include('Phone number is invalid')
    end
    it 'phone_numberは12桁以上だと登録できない' do
      @order_address.phone_number = '123456789999'
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include('Phone number is invalid')
    end
  end
end
