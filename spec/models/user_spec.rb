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

  context "when a user creates an account" do
    it "they should not be following other users" do
      expect(@user1.followings).to eq([])
    end
  end

  context "when a user creates an account" do
    it "they should not be following any users" do
      expect(@user1.followers).to eq([])
    end
  end

  context "when a user follows another user" do
    it "should be able to return followed user" do
      @user1.followings << @user2
      expect(@user1.followings).to include(@user2)
    end
  end

  context "when a user gains a follower" do
    it "should be able to return follower" do
      @user1.followers << @user3
      expect(@user1.followers).to include(@user3)
    end
  end

  context "when a user follows many users" do
    it "should be able to return all followed users" do
      @user1.followings << @user2
      @user1.followings << @user3
      expect(@user1.followings).to eq([@user2, @user3])
    end
  end

  context "when a user has many followers" do
    it "should be able to return all followers" do
      @user1.followers << @user2
      @user1.followers << @user3
      expect(@user1.followers).to eq([@user2, @user3])
    end
  end

  context "when a user is created"  do
    it "a corresponding user record should be created" do
      @user1pro = Profile.find(@user1.id)
      expect(@user1pro).to_not be_nil
    end
  end
end
