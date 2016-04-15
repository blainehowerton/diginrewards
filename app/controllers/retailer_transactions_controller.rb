class RetailerTransactionsController < ApplicationController

def new
	@rtransaction = RetailerTransaction.new
    @rtransaction.credit_amount = "16"
end

def create
	@rtransaction = RetailerTransaction.new
	respond_to do |format|
      if @rtransaction.save
        format.html { redirect_to @rtransaction, notice: 'Retailer Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @rtransaction }
      else
        format.html { render :new }
        format.json { render json: @rtransaction.errors, status: :unprocessable_entity }
      end
    end
end

def show
end

def transaction_params
      params.require(:rtransaction).permit(:credit_amount)
    end

end


