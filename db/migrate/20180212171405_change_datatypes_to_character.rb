class ChangeDatatypesToCharacter < ActiveRecord::Migration[5.0]
  def change
    change_column :characters, :description, :text
    change_column :characters, :biography, :text
  end
end
