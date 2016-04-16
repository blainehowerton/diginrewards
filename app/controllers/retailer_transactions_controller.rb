class RetailerTransactionsController < ApplicationController
<<<<<<< HEAD

def new
	@rtransaction = RetailerTransaction.new
    @rtransaction.credit_amount = "16"
=======
  before_filter :authenticate_admin!

def become
end

def index
end

def edit
end

def new
	@rtransaction = RetailerTransaction.new
    @rtransaction.credit_amount = '16.1'
>>>>>>> 7f2dcf42e38fe14b3fe30c681fed8cc534c633ff
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

<<<<<<< HEAD
def transaction_params
      params.require(:rtransaction).permit(:credit_amount)
    end
=======
def update
end

def destroy
end

private

def transaction_params
params.require(:rtransaction).permit(:memo)
end
>>>>>>> 7f2dcf42e38fe14b3fe30c681fed8cc534c633ff

end


