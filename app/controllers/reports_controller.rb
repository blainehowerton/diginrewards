class ReportsController < ApplicationController
  def index

  end

  def retailer_balances
    # @retailer_debits = RetailerTransaction.group('retailer_id').sum(:debit_amount).sum(:credit_amount)
    @retailer_balances = RetailerTransaction.group(:retailer_id).select("retailer_id, SUM(retailer_transactions.debit_amount) AS total_debits, SUM(retailer_transactions.credit_amount) AS total_credits")
  end
end
