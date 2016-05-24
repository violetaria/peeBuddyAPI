module Api
  module V1
    class LocationsController < ApplicationController

      def index
        lat = params[:lat]
        long = params[:lng]
        @client = GooglePlaces::Client.new(ENV['GOOGLE_SDK_API_KEY'])

        type = 'gas_station'
        results = @client.spots(lat,long, :types => [type])

        @locations = results.map do |result|
          Location.find_or_create_by!(place_id: result.place_id,
                                      lat: result.lat,
                                      lng: result.lng,
                                      name: result.name,
                                      icon_url: result.icon)
        end

        render 'index.json.jbuilder', status: :ok
      end
    end
  end
end

