class RetailersController < ApplicationController
  before_action :set_retailer, only: [:show, :edit, :update, :destroy]

  def index
	@retailers = Retailer.all
	end

	def new
	end

	def show
	end

	def create
	end

end