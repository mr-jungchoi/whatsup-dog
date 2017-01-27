class CreateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :parks do |t|
      t.string   :name
      t.string   :google_locations_id

      t.timestamps(null: false)
    end
  end
end
