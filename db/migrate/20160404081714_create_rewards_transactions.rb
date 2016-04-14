class CreateRewardsTransactions < ActiveRecord::Migration
  def change
    create_table :rewards_transactions do |t|
		t.date     "date"
	    t.integer  "transaction_id"
	    t.decimal  "credit_amount", precision: 10, scale: 2
	    t.decimal  "debit_amount", precision: 10, scale: 2
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.string   "memo"
		t.timestamps null: false
    end
  end
end
