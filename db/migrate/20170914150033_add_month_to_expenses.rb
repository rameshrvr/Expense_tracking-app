class AddMonthToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :month, :string, null: false
  end
end
