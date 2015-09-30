json.array!(@appztbles) do |appztble|
  json.extract! appztble, :id, :name
  json.url appztble_url(appztble, format: :json)
end
