class Transaction < ActiveRecord::Base
  belongs_to :retailer
  belongs_to :user
  belongs_to :cause

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },
  storage: :s3,
  s3_credentials: {access_key_id: ENV["AWS_KEY"], secret_access_key: ENV["AWS_SECRET"]},
                  bucket: "diginrewards"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
