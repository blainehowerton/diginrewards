class CauseTransactionsController < ApplicationController
before_filter :authenticate_admin!

def index
@cause_balances = CauseTransaction.joins(:cause).group(:cause_id).select("cause_id, SUM(cause_transactions.debit_amount) AS total_debits, SUM(cause_transactions.credit_amount) AS total_credits")
end

def new
@causetransaction = CauseTransaction.new
end

def show
@cause = Cause.find(params[:id])
@causetransactions = CauseTransaction.where("cause_id" => params[:id]).order('date DESC')
@causereceipts = Transaction.where("cause_id" => params[:id]).order('transaction_date DESC')
end


def create
@causetransaction = CauseTransaction.new(causetransaction_params)
  respond_to do |format|
      if @causetransaction.save
        format.html { redirect_to '/cause_transactions', notice: 'Cause Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @causetransaction }
      else
        format.html { render :new }
        format.json { render json: @causetransaction.errors, status: :unprocessable_entity }
      end
    end
end

private
def causetransaction_params
      params.require(:cause_transaction).permit(:debit_amount, :cause_id, :name, :credit_amount, :memo, :date)
end
end