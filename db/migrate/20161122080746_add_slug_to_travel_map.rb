class AddSlugToTravelMap < ActiveRecord::Migration
  def change
    add_column :travel_maps, :slug, :string
    add_index :travel_maps, :slug, unique: true
  end
end
