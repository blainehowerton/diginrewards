class Retailer < ActiveRecord::Base
  has_many :transactions

  validates_presence_of :name, :message => "for retailer must be entered."
  validates_presence_of :paypalID, :message => "ID must be entered."
  validates_presence_of :zip, :message => "code must be entered."
  validates_presence_of :fee_split, :message => "for Dig In must be entered."
  validates_presence_of :cause_split, :message => "for Cause must be entered."
  validates_presence_of :user_split, :message => "for User must be entered."
end
