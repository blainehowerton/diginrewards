class TransactionsController < ApplicationController

  def index
  	render('index')
  	#@transactions = Transaction.all
  end

  def pending
  	@transactions = Transaction.all
  	render('pending')
  end

  def list
  	@transactions = Transaction.all
  	render('list')
  end

  def edit
  end

end
