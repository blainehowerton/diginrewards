class UsersController < ApplicationController
before_action :set_transaction, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!

	def index
  	@user_balances = UserTransaction.joins(:user).where(user_id: current_user.id).group(:user_id).select("user_id, SUM(credit_amount) - SUM(debit_amount) AS total_balance")
  	@user_transactions = Transaction.where(user_id: current_user.id)
  	@transaction_totals = Transaction.joins(:user).where(user_id: current_user.id).group(:user_id).select("user_id, SUM(transactions.amount) AS total_transactions")
  	@user_payments = UserTransaction.where(user_id: current_user.id).where.not(debit_amount: 0)
  	@retailers = Retailer.all
  	@causes = Cause.all
	end

	def new
    @user = User.new
	end

	def show
	end

	def create
	@user = User.new

		respond_to do |format|
	      if @user.save
	        format.html { redirect_to '/onboarding', notice: 'User was successfully created.' }
	        format.json { render :show, status: :created, location: @user }
	      else
	        format.html { render :new }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
	    end
	end


end
