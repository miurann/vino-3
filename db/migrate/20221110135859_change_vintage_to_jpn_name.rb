class ChangeVintageToJpnName < ActiveRecord::Migration[7.0]
  def change
    change_column :wines, :vintage, :text
    rename_column :wines, :vintage, :jpn_name
  end
end
