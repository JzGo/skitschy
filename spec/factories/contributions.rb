FactoryGirl.define do
  factory :contribution do
    body "adding on"
    association :story
    association :author, factory: :contributing
  end

end
