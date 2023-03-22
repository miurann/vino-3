class RemoveLabelFromWines < ActiveRecord::Migration[7.0]
  def change
    remove_column :wines, :label, :string
  end
end
