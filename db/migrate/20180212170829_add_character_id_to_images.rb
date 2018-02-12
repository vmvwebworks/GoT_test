class AddCharacterIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :character_id, :string
  end
end
