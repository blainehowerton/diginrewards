class CausesController < ApplicationController
 before_action :set_cause, only: [:show, :edit, :update, :destroy]

  def index
	@causes = Cause.all
	end

	def new
    @cause = Cause.new
	end

	def show
	end

	def create
	end

end
