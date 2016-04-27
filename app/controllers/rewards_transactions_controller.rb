class RewardsTransactionsController < ApplicationController
before_filter :authenticate_admin!

def index
  @rewards_balances = RewardsTransaction.group(:retailer_id).select("retailer_id, SUM(rewards_transactions.debit_amount) AS total_debits, SUM(rewards_transactions.credit_amount) AS total_credits")
end

def new
@rewardstransaction = RewardsTransaction.new
end

def create
@rewardstransaction = RewardsTransaction.new(rewardstransaction_params)
  respond_to do |format|
      if @rewardstransaction.save
        format.html { redirect_to '/rewards_transactions', notice: 'Rewards Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @rewardstransaction }
      else
        format.html { render :new }
        format.json { render json: @rewardstransaction.errors, status: :unprocessable_entity }
      end
    end
end

private
def rewardstransaction_params
      params.require(:rewards_transaction).permit(:debit_amount, :credit_amount, :memo, :date, :retailer_id)
end
end