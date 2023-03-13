class AddColumnToRegion < ActiveRecord::Migration[7.0]
  def change
    add_column :regions, :yomigana, :string
  end
end
