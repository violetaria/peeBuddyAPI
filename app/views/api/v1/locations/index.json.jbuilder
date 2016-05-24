json.status 'ok'
json.locations do json.array! @locations.each do |location|
  json.id location.id
  json.coords do
    json.latitude location.lat
    json.longitude location.lng
  end
  json.title location.name
  json.icon location.icon_url
end
end
