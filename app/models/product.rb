class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  mount_uploaders :images, ProductUploader
  #serialize :images, JSON # If you use SQLite, add this line.
end
