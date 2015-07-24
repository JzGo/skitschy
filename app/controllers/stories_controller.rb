class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to user_path(current_user)
    end
  end

  def show
    @story = Story.find(params[:id])
  end


  private

    def story_params
      params.require(:story).permit(:title, :genre, :body, :user_id, :authors)
    end
end
