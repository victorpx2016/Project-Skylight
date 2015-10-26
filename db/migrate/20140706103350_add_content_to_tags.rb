class AddContentToTags < ActiveRecord::Migration
  def change
    remove_column :tags, :tag, :text
    add_column :tags, :content, :text
  end
end
