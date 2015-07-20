class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @profile = Profile.find(@user.id)
    @stories = Story.where(user_id: @user.id)
  end
end
