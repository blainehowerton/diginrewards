class RetailerTransactionsController < ApplicationController
 before_filter :authenticate_admin!

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