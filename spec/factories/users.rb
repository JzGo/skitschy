FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com"}
    sequence(:password) { |n| "password#{n}" }
    profile

    factory :user_w_profile do
      profile factory: :scifi
    end
  end

end
