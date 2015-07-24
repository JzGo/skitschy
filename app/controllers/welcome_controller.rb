class WelcomeController < ApplicationController
  include ApplicationHelper

  before_action :authenticate_user!


  include WelcomeHelper
  def index
    @following = Relationship.where(follower_id: current_user.id)
    @profile = Profile.find_or_create_by!(user_id: current_user.id)
    @feed = current_user.stories + current_user.followings_stories
    @stories = @feed.sort_by(&:created_at).reverse
  end

  def inbox
    @inbox = mailbox.inbox
    @active = :inbox
  end

  def sent
    @sent = mailbox.sentbox
    @active = :sent
  end

  def trash
    @trash = mailbox.trash
    @active = :trash
  end

end
