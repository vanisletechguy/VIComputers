json.extract! product, :id, :name, :description, :image, :cost, :availibility, :created_at, :updated_at
json.url product_url(product, format: :json)
