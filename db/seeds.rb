# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.new({ :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'}).save
Default.new({ :cause_split => '.03', :retailer_split => '.03', :fee_split => '.09'}).save