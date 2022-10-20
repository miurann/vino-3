class CreateAromas < ActiveRecord::Migration[7.0]
  def change
    create_table :aromas do |t|
      t.string :name, null: false
      t.string :image

      t.timestamps
    end
  end
end
