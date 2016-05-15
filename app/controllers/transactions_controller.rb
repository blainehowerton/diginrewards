class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def become
    return unless current_user.is_and_admin?
    sign_in(:user, User.find(params[:id]))
    redirect_to root_url # or user_root_url
    end

  def index
    @transactions = Transaction.all
    # @transaction = Transaction.new(params[:amount])
  end

  def show
    @transaction.cause_id = current_user.cause_id
  end

  def edit
  end

  def new
    @transaction = Transaction.new
    @transaction.cause_id = current_user.cause_id
  end

  def create
    @CauseTransaction = CauseTransaction.new
    # Find retailer name in the retailer table by entered value and save its id to the transaction table
    params[:transaction][:retailer_id] = Retailer.find_by_name(params[:retailer_name])[:id]
    # Find splits in retailer table by entered retailer name and save their split values to the transaction table
    params[:transaction][:retailer_split] = Retailer.find_by_name(params[:retailer_name])[:user_split]
    params[:transaction][:cause_split] = Retailer.find_by_name(params[:retailer_name])[:cause_split]
    params[:transaction][:fee_split] = Retailer.find_by_name(params[:retailer_name])[:fee_split]
    # Create a Transaction object
    @transaction = Transaction.new(transaction_params)
    # Set the transaction user_id = to the logged in user, and save the username to the transaction (transaction.user_id)
    if @transaction.save
      # save value from current signed in user to transaction's user_id field
      @transaction.status == "Not Reviewed"
      @transaction.user_id = current_user.id
      @transaction.cause_id = current_user.cause_id
    end

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to transactions_url, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
# Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:approve, :id, :status, :amount, :retailer_id, :created_at, :fee_split, :updated_at, :transaction_date, :cause_split, :retailer_split, :cause_id, :image)
    end
end
