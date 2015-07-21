class AddAuthorsToStories < ActiveRecord::Migration
  def change
    add_column :stories, :authors, :string
  end
end
