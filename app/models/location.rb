class Location < ActiveRecord::Base

  validates_presence_of :place_id, :lat, :lng, :name
end
