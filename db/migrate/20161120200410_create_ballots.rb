class CreateBallots < ActiveRecord::Migration[5.0]
  def change
    create_table :ballots do |t|
      t.references :event
      t.string :state
      t.string :phone_number

      t.integer :first_place_side_id
      t.integer :second_place_side_id
      t.integer :third_place_side_id

      t.integer :first_place_dessert_id
      t.integer :second_place_dessert_id
      t.integer :third_place_dessert_id

      t.string :token
      t.timestamps
    end
  end
end
