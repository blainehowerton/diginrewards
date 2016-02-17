class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.integer :user_id
      t.integer :retailer_id

      t.timestamps null: false
    end
  end
end
