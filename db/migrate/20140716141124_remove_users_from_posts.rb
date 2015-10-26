class RemoveUsersFromPosts < ActiveRecord::Migration
  def change
    revert do
    
      create_table :users do |t|
        t.timestamps
      end
      
    end
  end
end
