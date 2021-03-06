class TravelMap < ActiveRecord::Base
  belongs_to :profile
  has_many :travel_map_locations
  has_many :locations, through: :travel_map_locations
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
end
