class CauseTransactionsController < ApplicationController
before_filter :authenticate_admin!

def new
@causetransaction = CauseTransaction.new
end

def create
@causetransaction = CauseTransaction.new(causetransaction_params)
  respond_to do |format|
      if @causetransaction.save
        format.html { redirect_to '/process_transactions/new', notice: 'Cause Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @causetransaction }
      else
        format.html { render :new }
        format.json { render json: @causetransaction.errors, status: :unprocessable_entity }
      end
    end
end

private
def causetransaction_params
      params.require(:cause_transaction).permit(:debit_amount, :cause_id, :credit_amount, :memo, :date)
end
end