class CreateGrapeVarieties < ActiveRecord::Migration[7.0]
  def change
    create_table :grape_varieties do |t|
      t.string :name, null: false, unique: true

      t.timestamps
    end
  end
end
