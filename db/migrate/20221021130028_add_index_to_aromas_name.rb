class AddIndexToAromasName < ActiveRecord::Migration[7.0]
  def change
    add_index :aromas, :name, unique: true
  end
end
