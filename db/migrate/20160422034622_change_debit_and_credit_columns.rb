class ChangeDebitAndCreditColumns < ActiveRecord::Migration
  def change
  	change_column_null :cause_transactions, :debit_amount, false
  	change_column_null :cause_transactions, :credit_amount, false
  	change_column_default :cause_transactions, :debit_amount, 0
  	change_column_default :cause_transactions, :credit_amount, 0

	change_column_null :retailer_transactions, :debit_amount, false
  	change_column_null :retailer_transactions, :credit_amount, false
  	change_column_default :retailer_transactions, :debit_amount, 0
  	change_column_default :retailer_transactions, :credit_amount, 0

	change_column_null :rewards_transactions, :debit_amount, false
  	change_column_null :rewards_transactions, :credit_amount, false
  	change_column_default :rewards_transactions, :debit_amount, 0
  	change_column_default :rewards_transactions, :credit_amount, 0
  	
	change_column_null :user_transactions, :debit_amount, false
  	change_column_null :user_transactions, :credit_amount, false
  	change_column_default :user_transactions, :debit_amount, 0
  	change_column_default :user_transactions, :credit_amount, 0
  end
end