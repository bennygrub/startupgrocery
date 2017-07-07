class Vendor < ApplicationRecord
  mount_uploader :vendor_picture, VendorPictureUploader
  has_many :products

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
