json.array!(@links) do |link|
  json.extract! link, :id, :short, :full, :enabled
  json.url link_url(link, format: :json)
end
