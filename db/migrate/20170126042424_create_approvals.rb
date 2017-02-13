class CreateApprovals < ActiveRecord::Migration[5.0]
  def change
    create_table :approvals do |t|
      t.references :approved_dog
      t.references :approving_dog

      t.timestamps(null: false)
    end
  end
end
