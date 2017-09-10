class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :name, null: false
      t.integer :weight, null: false, default: 0

      t.timestamps null: false
    end
  end
end
