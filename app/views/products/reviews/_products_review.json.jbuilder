json.extract! products_review, :id, :product_id, :user_id, :description, :rating, :created_at, :updated_at
json.url products_review_url(products_review, format: :json)
