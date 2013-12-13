FactoryGirl.define do

  factory :organization do
    name { Faker::Company.name }
    description { Faker::Lorem.sentance(word_count = 5)}
  end

end