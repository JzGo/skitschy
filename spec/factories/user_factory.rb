FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "person#{n}" }
    sequence(:email) { |n| "person#{n}@example.com"}
    sequence(:password) { |n| "password#{n}" }
  end

end
