class UserTransactionsController < ApplicationController
before_filter :authenticate_admin!

def index
    @user_balances = UserTransaction.joins(:user).group(:user_id).select("user_id, SUM(user_transactions.debit_amount) AS total_debits, SUM(user_transactions.credit_amount) AS total_credits")
end

def new
@usertransaction = UserTransaction.new
end

def create
@usertransaction = UserTransaction.new(usertransaction_params)
  respond_to do |format|
      if @usertransaction.save
        format.html { redirect_to '/user_transactions', notice: 'User Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @usertransaction }
      else
        format.html { render :new }
        format.json { render json: @usertransaction.errors, status: :unprocessable_entity }
      end
    end
end

private
def usertransaction_params
      params.require(:user_transaction).permit(:debit_amount, :user_id, :username, :credit_amount, :memo, :date)
end

end