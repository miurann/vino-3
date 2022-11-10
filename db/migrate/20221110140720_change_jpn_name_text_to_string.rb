class ChangeJpnNameTextToString < ActiveRecord::Migration[7.0]
  def change
    change_column :wines, :jpn_name, :string
  end
end
