class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :place_id, null: false
      t.float :lat, null: false
      t.float :lng, null: false
      t.string :name, null: false
      t.string :icon_url

      t.timestamps null: false
    end
  end
end
