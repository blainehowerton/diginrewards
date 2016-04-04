class ReviseTransactionsTable < ActiveRecord::Migration
  def change
  	remove_column :transactions, :approved, :boolean
  	add_column :transactions, :status, :string, null: false, default: 'Not Reviewed'
  end

end