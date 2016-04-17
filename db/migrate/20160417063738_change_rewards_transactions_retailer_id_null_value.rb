class ChangeRewardsTransactionsRetailerIdNullValue < ActiveRecord::Migration
  def change
  	change_column_null :rewards_transactions, :retailer_id, true
  end
end
