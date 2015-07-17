class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @story = Story.new
    @profile = Profile.find_or_create_by!(user_id: current_user.id)
  end
end
