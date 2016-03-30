class Transaction < ActiveRecord::Base
  belongs_to :retailer
  belongs_to :user
  belongs_to :cause
  belongs_to :default

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },
  storage: :s3,
  s3_credentials: {access_key_id: ENV["AWS_KEY"], secret_access_key: ENV["AWS_SECRET"]},
                  bucket: "diginrewards"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates_presence_of :amount, :message => "for transaction is needed.  Please enter your receipt amount."
  validates_presence_of :image, :message => "needs to be uploaded. Please upload your receipt."
  validates_numericality_of :amount, :only_decimal => true, message: "%{value} is not a valid dollar amount in Transaction Amount."


end
