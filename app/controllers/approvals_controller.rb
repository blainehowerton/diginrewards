class ApprovalsController < ApplicationController
  def index
  	@approvals = Transaction.all
  end

  def list
  end

  def show
  end

  def create
  end

  def delete
  end

end
