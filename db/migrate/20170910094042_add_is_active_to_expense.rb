class AddIsActiveToExpense < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :is_active, :boolean, null: false, default: true

    add_index :expenses, :is_active
  end
end
