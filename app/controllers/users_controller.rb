class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @profile = Profile.find_or_create_by!(user_id: @user.id)
  end
end
