class RetailerTransactionsController < ApplicationController
 before_filter :authenticate_admin!

def index
    # @retailer_debits = RetailerTransaction.group('retailer_id').sum(:debit_amount).sum(:credit_amount)
    @retailer_balances = RetailerTransaction.group(:retailer_id).select("retailer_id, SUM(retailer_transactions.debit_amount) AS total_debits, SUM(retailer_transactions.credit_amount) AS total_credits")
    @retailer = Retailer.new
end

def new
@retailertransaction = RetailerTransaction.new
end

def create
@retailertransaction = RetailerTransaction.new(retailertransaction_params)
  respond_to do |format|
      if @retailertransaction.save
        format.html { redirect_to '/process_transactions/new', notice: 'Retailer Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @retailertransaction }
      else
        format.html { render :new }
        format.json { render json: @retailertransaction.errors, status: :unprocessable_entity }
      end
    end
end

private
def retailertransaction_params
      params.require(:retailer_transaction).permit(:debit_amount, :retailer_id, :credit_amount, :memo, :date)
end

end