require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    it 'nameとdescriptionとpriceとcategory_idとcondition_idとfee_idとday_idとship_from_idとimageとuser_idが存在すれば登録できる' do
      expect(@item).to be_valid
    end
    it 'nameが空だと登録できない' do
      @item.name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it 'descriptionが空だと登録できない' do
      @item.description = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Description can't be blank")
    end
    it 'priceが空だと登録できない' do
      @item.price = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
    it 'priceは300以下の値だと登録できない' do
      @item.price = 299
      @item.valid?
      expect(@item.errors.full_messages).to include('Price must be greater than 299')
    end
    it 'priceは9,999,999以上の値だと登録できない' do
      @item.price = 10_000_000
      @item.valid?
      expect(@item.errors.full_messages).to include('Price must be less than 10000000')
    end
    it 'priceが全角だと登録できない' do
      @item.price = '３００'
      @item.valid?
      expect(@item.errors.full_messages).to include('Price is not a number')
    end
    it 'category_idが空だと登録できない' do
      @item.category_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include('Category is not a number')
    end
    it 'category_idが1だと登録できない' do
      @item.category_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Category must be other than 1')
    end
    it 'condition_idが空だと登録できない' do
      @item.condition_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include('Condition is not a number')
    end
    it 'condition_idが1だと登録できない' do
      @item.condition_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Condition must be other than 1')
    end
    it 'fee_idが空だと登録できない' do
      @item.fee_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include('Fee is not a number')
    end
    it 'fee_idが1だと登録できない' do
      @item.fee_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Fee must be other than 1')
    end
    it 'day_idが空だと登録できない' do
      @item.day_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include('Day is not a number')
    end
    it 'day_idが1だと登録できない' do
      @item.day_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Day must be other than 1')
    end
    it 'ship_fromが空だと登録できない' do
      @item.ship_from_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include('Ship from is not a number')
    end
    it 'ship_from_idが1だと登録できない' do
      @item.ship_from_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include('Ship from must be other than 1')
    end
    it 'imageが空だと登録できない' do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
  end
end
