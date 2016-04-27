class UserTransaction < ActiveRecord::Base
	belongs_to :transactions
	belongs_to :user
end
