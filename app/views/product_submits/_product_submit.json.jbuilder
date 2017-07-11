json.extract! product_submit, :id, :name, :email, :product_name, :description, :image, :url, :created_at, :updated_at
json.url product_submit_url(product_submit, format: :json)
