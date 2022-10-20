class CreateWineGrapes < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_grapes do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :grape_variety, null: false, foreign_key: true

      t.timestamps
    end
  end
end
