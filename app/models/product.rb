class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  mount_uploaders :images, ProductUploader
  #serialize :images, JSON # If you use SQLite, add this line.

  belongs_to :vendor
  belongs_to :category
  has_many :favorites, dependent: :destroy
end
