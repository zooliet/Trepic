json.array!(@dummies) do |dummy|
  json.extract! dummy, :id, :name, :description
  json.url dummy_url(dummy, format: :json)
end
