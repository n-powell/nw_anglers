json.extract! response, :id, :name, :content, :post_id, :created_at, :updated_at
json.url response_url(response, format: :json)
