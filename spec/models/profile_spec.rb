require 'rails_helper'

RSpec.describe Profile do
  before (:each) do
    @userprofile = FactoryGirl.create(:user)
  end

  context "when a new user is created" do
    it "a corresponding user profile is created" do
      expect(Profile.find(@userprofile.id)).to_not be_nil
    end
  end

end
