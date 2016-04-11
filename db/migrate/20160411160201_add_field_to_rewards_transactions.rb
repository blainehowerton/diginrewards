class AddFieldToRewardsTransactions < ActiveRecord::Migration
  def change
  	add_column :rewards_transactions, :retailer_id, :string, null: false
  end
end
