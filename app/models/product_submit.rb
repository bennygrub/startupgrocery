class ProductSubmit < ApplicationRecord
  mount_uploader :image, ImageUploader
end
