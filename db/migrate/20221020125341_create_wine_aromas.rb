class CreateWineAromas < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_aromas do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :aroma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
