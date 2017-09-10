class CreateMonthExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :month_expenses do |t|
      t.integer :expense_id, null: false
      t.integer :month_id, null: false
      t.string :desc, null: false, default: ''
      t.integer :sum_real, null: false, default: 0

      t.timestamps
    end

    add_index :month_expenses, [:month_id, :expense_id], unique: true
  end
end
