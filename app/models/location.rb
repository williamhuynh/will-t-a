class Location < ActiveRecord::Base
    has_many :travel_map_locations
    has_many :travel_maps, through: :travel_map_locations
    
    geocoded_by :location_name
    after_validation :geocode
    
    def location_name
       name 
    end

    
end

