class RemoveBalances < ActiveRecord::Migration
  def change

  	remove_column :causes, :balance, :decimal
  	remove_column :retailers, :balance, :decimal
  	remove_column :users, :balance, :decimal

  	add_column :transactions, :user_split, :decimal, :precision=>5,:scale=>2,:default=>0.03, :null => false
	add_column :transactions, :cause_split, :decimal, :precision=>5,:scale=>2,:default=>0.03, :null => false
	add_column :transactions, :retailer_split, :decimal, :precision=>5,:scale=>2,:default=>0.03, :null => false
	add_column :transactions, :cause_id, :integer

  end
end
