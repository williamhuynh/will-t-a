class CreateGoogleMaps < ActiveRecord::Migration
  def change
    create_table :google_maps do |t|

      t.timestamps null: false
    end
  end
end
