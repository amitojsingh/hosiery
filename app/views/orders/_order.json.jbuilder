json.extract! order, :id, :design, :quantity, :created_at, :updated_at,:color, :lotnumber, :consumption
json.url order_url(order, format: :json)
