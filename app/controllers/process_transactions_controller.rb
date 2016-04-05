class ProcessTransactionsController < ApplicationController

	def index
	@transactions = Transaction.all
	end

	def pay
	@user_transaction = User_transaction.new
	@cause_transaction = Cause_transaction.new
	@retailer_transaction = Retailer_transaction.new
	@rewards_transaction = Rewards_transaction.new
	end


end
