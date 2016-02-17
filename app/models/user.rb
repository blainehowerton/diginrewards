class User < ActiveRecord::Base
  has_many :transactions
  belongs_to :cause
end
