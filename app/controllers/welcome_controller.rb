class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @profile = Profile.find_or_create_by!(user_id: current_user.id)
  end
end
