class AddIndexToGrapeVarietyName < ActiveRecord::Migration[7.0]
  def change
    add_index :grape_varieties, :name, unique: true
  end
end
