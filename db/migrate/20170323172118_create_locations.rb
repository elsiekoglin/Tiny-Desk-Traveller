class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city, {null: false}
      t.string :area_of_interest, {null: false}
      t.float :lat, {null: false}
      t.float :lng, {null: false}

      t.timestamps(null: false)
    end
  end
end
