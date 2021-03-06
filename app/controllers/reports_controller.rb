class ReportsController < ApplicationController
  
  def index
  end

  def retailer_balances
    @retailer_balances = RetailerTransaction.joins(:retailer).group(:retailer_id).select("retailer_id, SUM(retailer_transactions.debit_amount) AS total_debits, SUM(retailer_transactions.credit_amount) AS total_credits, SUM(retailer_transactions.credit_amount) - SUM(retailer_transactions.debit_amount) AS balance")
  end

  def all_receipts
  	@transactions = Transaction.order('transaction_date DESC').all
  	# @transactions = Transaction.where("retailer_id" => 3)
  end

  def user_list
    @users = User.all.order('username ASC')
  end

  def show
  	
  end 

end
