FactoryGirl.define do
  factory :story do
    title "Title"
    genre "Genre"
    body "Body"
    user factory: :user_w_profile
  end
end
