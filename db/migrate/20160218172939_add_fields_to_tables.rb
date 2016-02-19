class AddFieldsToTables < ActiveRecord::Migration
  def change
  	add_column :causes, :paypalID, :string
    add_column :causes, :contact_email, :string
  	add_column :causes, :address, :string
  	add_column :causes, :city, :string
  	add_column :causes, :state, :string, :limit => 2
  	add_column :causes, :zip, :string, :limit => 5
  	add_column :causes, :phone, :string, :limit => 10
    add_column :causes, :split, :decimal, :precision=>5,:scale=>2,:default=>0.03, :null => false
    add_column :causes, :balance, :decimal, :precision=>5,:scale=>2,:default=>0.00, :null => false


  	remove_column :causes, :description, :text

  	add_column :retailers, :paypalID, :string
  	add_column :retailers, :address, :string
  	add_column :retailers, :city, :string
  	add_column :retailers, :state, :string, :limit => 2
  	add_column :retailers, :zip, :string, :limit => 5
  	add_column :retailers, :phone, :string, :limit => 10
    add_column :retailers, :contact_email, :string
    add_column :retailers, :split, :decimal, :precision=>5,:scale=>2,:default=>0.03, :null => false
    add_column :retailers, :balance, :decimal, :precision=>5,:scale=>2,:default=>0.00, :null => false

  	add_column :users, :paypalID, :string
  	add_column :users, :address, :string
  	add_column :users, :city, :string
  	add_column :users, :state, :string, :limit => 2
  	add_column :users, :zip, :string, :limit => 5
  	add_column :users, :phone, :string, :limit => 10
    add_column :users, :contact_email, :string
    add_column :users, :balance, :decimal, :precision=>5,:scale=>2,:default=>0.00, :null => false

  	add_column :transactions, :approved, :boolean
  	add_column :transactions, :transaction_date, :date
  end
end
