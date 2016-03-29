class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  	@users = User.all
  	end

	def new
    @user = User.new
	end

	def show
	end

	def create
	end

end
