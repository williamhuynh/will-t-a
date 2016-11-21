class TravelMapLocation < ActiveRecord::Base
  belongs_to :travel_map
  belongs_to :location
end
