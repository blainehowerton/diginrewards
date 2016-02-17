class Transaction < ActiveRecord::Base
  belongs_to :retailer
  belongs_to :user
end
