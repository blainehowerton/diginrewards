class CausesController < ApplicationController
 before_filter :authenticate_admin!

  def index
	@causes = Cause.new
	end

	def new
    @cause = Cause.new
	end

	def show
	end

	def create
	@cause = Cause.new(cause_params)

	respond_to do |format|
      if @cause.save
        format.html { redirect_to '/onboarding', notice: 'Cause was successfully created.' }
        format.json { render :show, status: :created, location: @retailer }
      else
        format.html { render :new }
        format.json { render json: @cause.errors, status: :unprocessable_entity }
      end
    end
end

def cause_params
      params.require(:cause).permit(:name, :paypalID, :contact_email, :phone, :address, :city, :state, :zip, :split)
    end

end