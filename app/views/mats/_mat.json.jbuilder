json.extract! mat, :id, :mat_type, :mat_size, :comment, :created_at, :updated_at
json.url mat_url(mat, format: :json)
