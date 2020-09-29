FactoryBot.define do
  factory :order_donation do
    token {"aaaaa"}
    postal_code { '123-4567' }
    state_id { 2 }
    city { '東京都' }
    address { '葛飾区' }
    phone_number { '08011112222' }
    building_name { '東京ハイツ' }

  end
end