class RetailerTransaction < ActiveRecord::Base
	belongs_to :transactions
  belongs_to :retailer
end
