class AddFieldsToTables < ActiveRecord::Migration
  def change
  	add_column :causes, :paypalID, :string
  	add_column :causes, :address, :string
  	add_column :causes, :city, :string
  	add_column :causes, :state, :string
  	add_column :causes, :zip, :string
  	add_column :causes, :phone, :string
  	remove_column :causes, :description, :text
  	add_column :retailers, :paypalID, :string
  	add_column :retailers, :address, :string
  	add_column :retailers, :city, :string
  	add_column :retailers, :state, :string
  	add_column :retailers, :zip, :string
  	add_column :retailers, :phone, :string
  	add_column :users, :paypalID, :string
  	add_column :users, :address, :string
  	add_column :users, :city, :string
  	add_column :users, :state, :string
  	add_column :users, :zip, :string
  	add_column :users, :phone, :string
  	add_column :transactions, :approved, :boolean
  	add_column :transactions, :transaction_date, :date
  end
end
