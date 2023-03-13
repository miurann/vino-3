class ChangeColumnRegionsYomigana < ActiveRecord::Migration[7.0]
  def change
    change_column :regions, :yomigana, :string, null: false
  end
end
