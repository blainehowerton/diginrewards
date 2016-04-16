# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.new({ :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'}).save
Default.new({ :cause_split => '.03', :retailer_split => '.03', :fee_split => '.09'}).save
Cause.new({ :name => 'sample cause 1', :paypalID => 'cause1.paypalID@sample.com', :contact_email => 'cause1.sample@sample.com', :zip => '80013'}).save
Cause.new({ :name => 'sample cause 2', :paypalID => 'cause2.paypalID@sample.com', :contact_email => 'cause2.sample@sample.com', :zip => '80220'}).save
Cause.new({ :name => 'sample cause 3', :paypalID => 'cause3.paypalID@sample.com', :contact_email => 'cause3.sample@sample.com', :zip => '80220'}).save
Retailer.new({ :name => 'sample retailer 1', :paypalID => 'retailer1.paypalID@sample.com', :zip => '80018', :fee_split => '.09', :cause_split => '.03', :user_split => '.03'}).save
Retailer.new({ :name => 'sample retailer 2', :paypalID => 'retailer2.paypalID@sample.com', :zip => '80018', :fee_split => '.09', :cause_split => '.03', :user_split => '.03'}).save
Retailer.new({ :name => 'sample retailer 3', :paypalID => 'retailer3.paypalID@sample.com', :zip => '80018', :fee_split => '.09', :cause_split => '.03', :user_split => '.03'}).save
User.new({ :username => 'sampleuser1', :paypalID => 'user1.paypalID@sample.com', :cause_id => 1, :email => 'user1.email@sample.com', :password => "password" }).save
User.new({ :username => 'sampleuser2', :paypalID => 'user1.paypalID@sample.com', :cause_id => 2, :email => 'user2.email@sample.com', :password => "password" }).save
User.new({ :username => 'sampleuser3', :paypalID => 'user1.paypalID@sample.com', :cause_id => 3, :email => 'user3.email@sample.com', :password => "password" }).save

Transaction.create(amount: '100.00', user_id: '1', retailer_id: '1', cause_id: '1', image: File.new("public/images/reptiles.jpg"), transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', status: 'Final')
Transaction.create(amount: '100.00', user_id: '1', retailer_id: '2', cause_id: '1', image: File.new("public/images/reptiles.jpg"), transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', status: 'Final')
Transaction.create(amount: '100.00', user_id: '2', retailer_id: '2', cause_id: '2', image: File.new("public/images/reptiles.jpg"), transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', status: 'Final')
Transaction.create(amount: '100.00', user_id: '3', retailer_id: '1', cause_id: '3', image: File.new("public/images/reptiles.jpg"), transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', status: 'Final')
Transaction.create(amount: '100.00', user_id: '3', retailer_id: '3', cause_id: '3', image: File.new("public/images/reptiles.jpg"), transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', status: 'Final')
Transaction.create(amount: '100.00', user_id: '3', retailer_id: '2', cause_id: '3', image: File.new("public/images/reptiles.jpg"), transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', status: 'Final')
Transaction.create(amount: '100.00', user_id: '3', retailer_id: '2', cause_id: '3', image: File.new("public/images/reptiles.jpg"), transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', status: 'Final')

RewardsTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :credit_amount => '9', :memo => 'sample data (program fee credit)'}).save
RewardsTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '2', :credit_amount => '9', :memo => 'sample data (program fee credit)'}).save
RewardsTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '3', :credit_amount => '9', :memo => 'sample data (program fee credit)'}).save
RewardsTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '4', :credit_amount => '9', :memo => 'sample data (program fee credit)'}).save
RewardsTransaction.new({ :retailer_id => '3', :date => 'April 05, 2016', :transaction_id => '5', :credit_amount => '9', :memo => 'sample data (program fee credit)'}).save
RewardsTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '6', :credit_amount => '9', :memo => 'sample data (program fee credit)'}).save
RewardsTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '7', :credit_amount => '9', :memo => 'sample data (program fee credit)'}).save

UserTransaction.new({ :user_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :credit_amount => '3', :memo => 'sample data (user account credit)'}).save
UserTransaction.new({ :user_id => '1', :date => 'April 05, 2016', :transaction_id => '2', :credit_amount => '3', :memo => 'sample data (user account credit)'}).save
UserTransaction.new({ :user_id => '2', :date => 'April 05, 2016', :transaction_id => '3', :credit_amount => '3', :memo => 'sample data (user account credit)'}).save
UserTransaction.new({ :user_id => '3', :date => 'April 05, 2016', :transaction_id => '4', :credit_amount => '3', :memo => 'sample data (user account credit)'}).save
UserTransaction.new({ :user_id => '3', :date => 'April 05, 2016', :transaction_id => '5', :credit_amount => '3', :memo => 'sample data (user account credit)'}).save
UserTransaction.new({ :user_id => '3', :date => 'April 05, 2016', :transaction_id => '6', :credit_amount => '3', :memo => 'sample data (user account credit)'}).save
UserTransaction.new({ :user_id => '3', :date => 'April 05, 2016', :transaction_id => '7', :credit_amount => '3', :memo => 'sample data (user account credit)'}).save

CauseTransaction.new({ :cause_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :credit_amount => '3', :memo => 'sample data'}).save
CauseTransaction.new({ :cause_id => '1', :date => 'April 05, 2016', :transaction_id => '2', :credit_amount => '3', :memo => 'sample data'}).save
CauseTransaction.new({ :cause_id => '2', :date => 'April 05, 2016', :transaction_id => '3', :credit_amount => '3', :memo => 'sample data'}).save
CauseTransaction.new({ :cause_id => '3', :date => 'April 05, 2016', :transaction_id => '4', :credit_amount => '3', :memo => 'sample data'}).save
CauseTransaction.new({ :cause_id => '3', :date => 'April 05, 2016', :transaction_id => '5', :credit_amount => '3', :memo => 'sample data'}).save
CauseTransaction.new({ :cause_id => '3', :date => 'April 05, 2016', :transaction_id => '6', :credit_amount => '3', :memo => 'sample data'}).save
CauseTransaction.new({ :cause_id => '3', :date => 'April 05, 2016', :transaction_id => '7', :credit_amount => '3', :memo => 'sample data'}).save

RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :debit_amount => '3', :memo => 'sample data (cause debit)'}).save
RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :debit_amount => '3', :memo => 'sample data (user fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '1', :debit_amount => '9', :memo => 'sample data (program fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '2', :debit_amount => '3', :memo => 'sample data (cause debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '2', :debit_amount => '3', :memo => 'sample data (user fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '2', :debit_amount => '9', :memo => 'sample data (program fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '3', :debit_amount => '3', :memo => 'sample data (cause debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '3', :debit_amount => '3', :memo => 'sample data (user fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '3', :debit_amount => '9', :memo => 'sample data (program fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '4', :debit_amount => '3', :memo => 'sample data (cause debit)'}).save
RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '4', :debit_amount => '3', :memo => 'sample data (user fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '1', :date => 'April 05, 2016', :transaction_id => '4', :debit_amount => '9', :memo => 'sample data (program fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '3', :date => 'April 05, 2016', :transaction_id => '5', :debit_amount => '3', :memo => 'sample data (cause debit)'}).save
RetailerTransaction.new({ :retailer_id => '3', :date => 'April 05, 2016', :transaction_id => '5', :debit_amount => '3', :memo => 'sample data (user fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '3', :date => 'April 05, 2016', :transaction_id => '5', :debit_amount => '9', :memo => 'sample data (program fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '6', :debit_amount => '3', :memo => 'sample data (cause debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '6', :debit_amount => '3', :memo => 'sample data (user fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '6', :debit_amount => '9', :memo => 'sample data (program fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '7', :debit_amount => '3', :memo => 'sample data (cause debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '7', :debit_amount => '3', :memo => 'sample data (user fee debit)'}).save
RetailerTransaction.new({ :retailer_id => '2', :date => 'April 05, 2016', :transaction_id => '7', :debit_amount => '9', :memo => 'sample data (program fee debit)'}).save

Transaction.create(amount: '1.00', user_id: '1', image: File.new("public/images/reptiles.jpg"), retailer_id: '1', transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', cause_id: '1', status: 'Not Reviewed')
Transaction.create(amount: '10.00', user_id: '1', image: File.new("public/images/reptiles.jpg"), retailer_id: '1', transaction_date: 'April 05, 2016', cause_split: '.03', retailer_split: '.03', fee_split: '.09', cause_id: '1', status: 'Approved')
