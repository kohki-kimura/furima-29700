FactoryBot.define do
  factory :item do
    name              { Faker::Name.name }
    description       { Faker::Name.name }
    price             { 300 }
    category_id       { 2 }
    condition_id      { 2 }
    fee_id            { 2 }
    day_id            { 2 }
    ship_from_id        { 2 }

    after(:build) do |item|
      item.image.attach(io: File.open('app/assets/images/camera.png'), filename: 'camera.png')
    end

    association :user
  end
end
