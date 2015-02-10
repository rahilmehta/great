json.array!(@greats) do |great|
  json.extract! great, :id, :name, :content
  json.url great_url(great, format: :json)
end
