class CreateTravelMapLocations < ActiveRecord::Migration
  def change
    create_table :travel_map_locations do |t|
      t.belongs_to :travel_map, index: true, foreign_key: true
      t.belongs_to :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
