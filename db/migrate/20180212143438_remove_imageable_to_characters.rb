class RemoveImageableToCharacters < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :imageable_id
    remove_column :images, :imageable_type
  end
end
