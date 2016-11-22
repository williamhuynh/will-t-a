class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :travel_maps
  
  extend FriendlyId
  friendly_id :first_name, use: :slugged
end
