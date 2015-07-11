require 'rails_helper'

describe User do
  before :each do
    @user1 = FactoryGirl.create(:user)
    @user2 = FactoryGirl.create(:user)
    @user3 = FactoryGirl.create(:user)
  end

  context "when new users are created" do
    it "they can be listed" do
      expect(User.all).to eq([@user1, @user2, @user3])
    end
  end
end
