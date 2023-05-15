FactoryBot.define do
  factory :property do 
    user
    name { "MyString" }
    description { "MyText" }
    headline { "MyString" }
    address_1 { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country_code { Faker::Address.country_code }
  end
end
