class Retailer < ActiveRecord::Base
  has_many :transactions
end
