class RetailerTransaction < ActiveRecord::Base
	belongs_to :transactions

	attr_accessor :balance
end
