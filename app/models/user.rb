class User < ActiveRecord::Base
	has_many :transactions
	has_many :retailers
end
