class Cause < ActiveRecord::Base
  has_many :users

  validates_presence_of :name, :message => "Cause name must be entered."
  validates_presence_of :paypalID, :message => "Pay pal ID must be entered."
  validates_presence_of :zip, :message => "Zip code must be entered."

end
