class RetailersController < ApplicationController
	before_filter :authenticate_admin!

  def index
	@retailers = Retailer.all.order('name ASC')
	end

	def new
  @retailer = Retailer.new
	end

  def show
  set_retailer
  @retailertransactions = RetailerTransaction.where("retailer_id" => params[:id])
  @retailer_balances = RetailerTransaction.joins(:retailer).group(:retailer_id).select("retailer_id, SUM(retailer_transactions.debit_amount) AS total_debits, SUM(retailer_transactions.credit_amount) AS total_credits")
  
  @retailerreceipts = Transaction.where("retailer_id" => params[:id]).all.order('transaction_date DESC')
  end

  def create
  @retailer = Retailer.new(retailer_params)

  	respond_to do |format|
        if @retailer.save
          format.html { redirect_to '/onboarding', notice: 'Retailer was successfully created.' }
          format.json { render :show, status: :created, location: @retailer }
        else
          format.html { render :new }
          format.json { render json: @retailer.errors, status: :unprocessable_entity }
        end
      end
  end

  def update
    @retailer = Retailer.find(params[:id])
  end

private
    def retailer_params
      params.require(:retailer).permit(:name, :authenticity_token, :paypalID, :contact_email, :phone, :address, :city, :state, :zip, :fee_split, :cause_split, :user_split)
    end

    def set_retailer
      @retailer = Retailer.find(params[:id])
    end
end