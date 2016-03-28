class RetailersController < ApplicationController
	before_filter :authenticate_admin!

  def index
	@retailers = Retailer.all
	end

	def new
    @retailer = Retailer.new
	end

	def show
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

def retailer_params
      params.require(:retailer).permit(:name, :paypalID, :contact_email, :phone, :address, :city, :state, :zip, :split)
    end

end