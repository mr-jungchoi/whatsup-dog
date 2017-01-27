class CreateWalks < ActiveRecord::Migration[5.0]
  def change
    create_table :walks do |t|
      t.datetime   :scheduled_date
      t.references :dog
      t.references :other_dog
      t.references :park, index: true, foreign_key: true

      t.timestamp
    end
  end
end
