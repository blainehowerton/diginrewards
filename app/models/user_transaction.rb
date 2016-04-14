class UserTransaction < ActiveRecord::Base
	belongs_to :transactions
end
