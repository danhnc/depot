json.extract! purchase, :id, :order_id, :cart_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
