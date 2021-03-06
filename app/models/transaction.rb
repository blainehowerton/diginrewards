class Transaction < ActiveRecord::Base
  belongs_to :retailer
  belongs_to :user
  belongs_to :cause
  belongs_to :default
  has_many :cause_transactions

has_attached_file :image,
                    :styles => lambda{ |a|
                                  a.instance.image_content_type =~ %r(image) ? 
                                  {:thumb => "100x100#", 
                                  :medium => "300x300>" }: {}
                                 },
                                  storage: :s3,
                                  s3_credentials: {access_key_id: ENV["AWS_KEY"], secret_access_key: ENV["AWS_SECRET"]},
                                                  bucket: "diginrewards"

validates_attachment_content_type :image, content_type: [/\Aimage\/.*\Z/, /pdf\Z/]

  validates_presence_of :transaction_date, :message => "needs to be entered. Please enter the date the transaction took place."
  validates_presence_of :image, :message => "needs to be uploaded. Please upload your receipt."
  validates_presence_of :retailer_id, :message => "Retailer name must be entered."
  validates_numericality_of :amount, :only_decimal => true, message: "%{value} is not a valid dollar amount in Transaction Amount."

# Rails Admin Drop Down Values in status field
 def status_enum
   [['Not Reviewed'],['Approved'],['Final']]
  end

end
