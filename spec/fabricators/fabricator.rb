Fabricator(:location) do
  place_id { Faker::Code.isbn }
  lat { Faker::Address.latitude }
  lng { Faker::Address.longitude }
  name { Faker::Name.name }
  icon_url 'http://localhost:5000/icons/gasstation-unrated.png'
end