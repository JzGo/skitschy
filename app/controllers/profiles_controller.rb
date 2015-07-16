class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find(current_user.id)
  end

  def update
    @profile = Profile.find(current_user.id)
    if @profile.update(profile_params)
      redirect_to user_path
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:username, :tagline, :aboutme, :genres)
  end
end
