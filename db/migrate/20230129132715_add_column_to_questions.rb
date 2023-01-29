class AddColumnToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :region, index: true, null: false
  end
end
