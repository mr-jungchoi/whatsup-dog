class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string   :fullname
      t.string   :email
      t.string   :password
      t.text     :bio
      t.string   :avatar
      t.references :park, index: true, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
