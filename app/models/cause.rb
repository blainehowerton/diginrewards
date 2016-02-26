class Cause < ActiveRecord::Base
  has_many :transactions
end
