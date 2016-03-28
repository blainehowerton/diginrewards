class RetailersController < ApplicationController
  before_action :set_retailer, only: [:show, :edit, :update, :destroy]

  def index
	@retailers = Retailer.all
	end

	def new
    @retailer = Retailer.new
	end

	def show
	end

	def create
	end

end