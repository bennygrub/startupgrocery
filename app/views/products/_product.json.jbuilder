json.extract! product, :id, :name, :description, :ingredients, :msrp, :slug, :created_at, :updated_at
json.url product_url(product, format: :json)
