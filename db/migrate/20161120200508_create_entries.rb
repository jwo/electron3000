class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :event
      t.string :category
      t.string :name
      t.string :photo_id

      t.timestamps
    end
  end
end
