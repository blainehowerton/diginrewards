class Transaction < ActiveRecord::Base
  belongs_to :retailer
  belongs_to :user
  belongs_to :cause
end
