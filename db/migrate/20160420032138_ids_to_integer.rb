class IdsToInteger < ActiveRecord::Migration
  def change
  	remove_column :cause_transactions, :cause_id, :string
  	add_column :cause_transactions, :cause_id, :integer

	remove_column :retailer_transactions, :retailer_id, :string
  	add_column :retailer_transactions, :retailer_id, :integer

	remove_column :rewards_transactions, :retailer_id, :string
  	add_column :rewards_transactions, :retailer_id, :integer

	remove_column :user_transactions, :user_id, :string
  	add_column :user_transactions, :user_id, :integer
  end
end
