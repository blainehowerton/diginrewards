class UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :authenticate_user!

	def index
  	@user_balances = UserTransaction.joins(:user).group(:user_id).select("user_id, SUM(user_transactions.debit_amount) AS total_debits, SUM(user_transactions.credit_amount) AS total_credits").where("username = current_user")
  	@transaction_totals = Transaction.joins(:user).group(:user_id).select("user_id, SUM(transactions.amount) AS total_transactions").where("username = current_user")
	@transactions = Transaction.all.joins(:user).where("username = current_user")
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
