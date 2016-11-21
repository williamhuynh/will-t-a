class CreateTravelMaps < ActiveRecord::Migration
  def change
    create_table :travel_maps do |t|
      t.string :name
      t.text :description
      t.string :duration
      t.string :cost
      t.belongs_to :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
