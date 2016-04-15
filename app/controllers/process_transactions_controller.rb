class ProcessTransactionsController < ApplicationController
     before_filter :authenticate_admin!

	def index
	@transactions = Transaction.all
	end

	def new
		@transactions = Transaction.all
		@transaction = Transaction.new
		@transactions.each do |transaction|
          if transaction.status == "Approved"
          	@RetailerTransaction = RetailerTransaction.new
          	@RetailerTransaction.debit_amount = transaction.amount * transaction.cause_split
          	@RetailerTransaction.retailer_id = transaction.retailer_id
          	@RetailerTransaction.date = transaction.transaction_date
          	@RetailerTransaction.transaction_id = transaction.id
          	@RetailerTransaction.memo = "Retailer cause donation (paid to cause) processed through transaction processing."
          	@RetailerTransaction.save

          	@CauseTransaction = CauseTransaction.new
          	@CauseTransaction.credit_amount = transaction.amount * transaction.cause_split
          	@CauseTransaction.cause_id = transaction.cause_id
          	@CauseTransaction.date = transaction.transaction_date
          	@CauseTransaction.transaction_id = transaction.id
          	@CauseTransaction.memo = "Cause deposit (received from retailer) processed through transaction processing."
          	@CauseTransaction.save

          	@RetailerTransaction = RetailerTransaction.new
          	@RetailerTransaction.debit_amount = transaction.amount * transaction.retailer_split
          	@RetailerTransaction.retailer_id = transaction.retailer_id
          	@RetailerTransaction.date = transaction.transaction_date
          	@RetailerTransaction.transaction_id = transaction.id
          	@RetailerTransaction.memo = "Retailer cash back (paid to user) processed through transaction processing."
          	@RetailerTransaction.save

          	@UserTransaction = UserTransaction.new
          	@UserTransaction.credit_amount = transaction.amount * transaction.retailer_split
          	@UserTransaction.user_id = transaction.user_id
          	@UserTransaction.date = transaction.transaction_date
          	@UserTransaction.transaction_id = transaction.id
          	@UserTransaction.memo = "User cash deposit (received from retailer) processed through transaction processing."
          	@UserTransaction.save

			@RetailerTransaction = RetailerTransaction.new
          	@RetailerTransaction.debit_amount = transaction.amount * transaction.fee_split
          	@RetailerTransaction.retailer_id = transaction.retailer_id
          	@RetailerTransaction.date = transaction.transaction_date
          	@RetailerTransaction.transaction_id = transaction.id
          	@RetailerTransaction.memo = "Retailer program fee (paid to Dig In) processed through transaction processing."
          	@RetailerTransaction.save

          	@RewardsTransaction = RewardsTransaction.new
          	@RewardsTransaction.credit_amount = transaction.amount * transaction.fee_split
          	@RewardsTransaction.retailer_id = transaction.retailer_id
          	@RewardsTransaction.date = transaction.transaction_date
          	@RewardsTransaction.transaction_id = transaction.id
          	@RewardsTransaction.memo = "Program Fee deposit (paid to Dig In by retailer) processed through transaction processing."
          	@RewardsTransaction.save

          	transaction.status = "Final"
          	transaction.save
          end
          @RetailerTransaction = RetailerTransaction.new
      end	
	end

	def create
	end

	def show
	end

end
