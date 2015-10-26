class AddReferencesToTags < ActiveRecord::Migration
  def change
    add_reference :tags, :post, index: true
  end
end
