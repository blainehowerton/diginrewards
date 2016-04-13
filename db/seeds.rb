# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.new({ :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'}).save
Default.new({ :cause_split => '.03', :retailer_split => '.03', :fee_split => '.09'}).save
Cause.new({ :name => 'sample cause', :paypalID => 'sample@sample.com', :contact_email => 'sample@sample.com', :address => 'sample address', :city => 'sample city', :state => 'CO', :zip => '80013', :phone => '3034567898'}).save
Retailer.new({ :name => 'sample retailer', :paypalID => 'sample@sample.com', :zip => '80018', :fee_split => '.09', :cause_split => '.03', :user_split => '.03'}).save

Transaction.create(amount: '100.00', user_id: '1', image: File.new("public/images/reptiles.jpg"), retailer_id: '1', transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', cause_id: '1', status: 'Final')
CauseTransaction.new({ :cause_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :credit_amount => '3', :memo => 'sample data'}).save
RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :debit_amount => '3', :memo => 'sample data (cause debit)'}).save
RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :debit_amount => '3', :memo => 'sample data (user fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :debit_amount => '9', :memo => 'sample data (program fee debit)'}).save
UserTransaction.new({ :user_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :credit_amount => '3', :memo => 'sample data (user account credit)'}).save
RewardsTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :credit_amount => '9', :memo => 'sample data (program fee credit)'}).save

Transaction.create(amount: '1.00', user_id: '1', image: File.new("public/images/reptiles.jpg"), retailer_id: '1', transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', cause_id: '1', status: 'Not Reviewed')
Transaction.create(amount: '10.00', user_id: '1', image: File.new("public/images/reptiles.jpg"), retailer_id: '1', transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', cause_id: '1', status: 'Approved')
