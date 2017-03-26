json.extract! order, :id, :total_cost, :payment_stage, :created_at, :updated_at
json.url order_url(order, format: :json)
