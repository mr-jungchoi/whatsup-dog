class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string   :name
      t.integer  :sex
      t.integer  :age
      t.integer  :size
      t.string   :breed
      t.text     :bio
      t.string   :avatar
      t.reference :user, index: true, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
