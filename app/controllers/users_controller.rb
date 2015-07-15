class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @profile = Profile.find(@user.id)
  end
end
