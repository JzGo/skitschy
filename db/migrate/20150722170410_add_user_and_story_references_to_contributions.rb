class AddUserAndStoryReferencesToContributions < ActiveRecord::Migration
  def change
    add_column :contributions, :story_id, :integer
    add_column :contributions, :user_id, :integer
  end
end
