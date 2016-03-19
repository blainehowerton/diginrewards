class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  # helper_method :get_retailers

  def get_retailers
    "Heya dudes"
    # Retailer.where("name LIKE (?)", "%#{params[:retailer_name]}").pluck(:name)
  end

  def index
  	@transactions = Transaction.all
  end

  def show
  end

  def show2
  end

  def edit
  end

  def approve
  end

  def new
    @transaction = Transaction.new
  end

  def create
    params[:transaction][:retailer_id] = Retailer.find_by_name(params[:retailer_name])[:id]
    params[:transaction][:cause_id] = Cause.find_by_name(params[:cause_name])[:id]
    @transaction = Transaction.new(transaction_params)

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
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
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
      params.require(:transaction).permit(:id, :amount, :retailer_id, :created_at, :updated_at, :approved, :transaction_date, :user_split, :cause_split, :retailer_split, :cause_id, :image)
    end
end
