class AddMoodToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :mood, :string, :default => 'Not Sure'
  end
end
