class ChageWinesDescriptionIntegerToText < ActiveRecord::Migration[7.0]
  def change
    change_column :wines, :description, :text
  end
end
