class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :tagline
      t.string :aboutme
      t.string :genres
      t.belongs_to :user, index:true

      t.timestamps null: false
    end
  end
end
