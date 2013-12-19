FactoryGirl.define do

  factory :campaign do
    name { Faker::Company.catch_phrase }
    description { Faker::Company.bs}
  end

end