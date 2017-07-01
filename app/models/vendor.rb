class Vendor < ApplicationRecord
  mount_uploader :vendor_picture, VendorPictureUploader
  has_many :products
end
