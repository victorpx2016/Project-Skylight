class AddMoodToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :mood, :string, :default => 'not sure'
  end
end
