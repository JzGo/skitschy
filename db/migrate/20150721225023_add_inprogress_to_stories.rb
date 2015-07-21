class AddInprogressToStories < ActiveRecord::Migration
  def change
    add_column :stories, :inprogress, :boolean, default: true
  end
end
