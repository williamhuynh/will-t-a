class GoogleMap
    
  include HTTParty
  base_uri 'http://maps.googleapis.com'

  attr_accessor :origin, :destination

   def initialize(origin, destination)
    @options = { query: {origin: origin, destination: destination} }
  end

  def directions
    self.class.get("/maps/api/directions/json", @options)
  end
end
