class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :building_id
      t.integer :capacity
      t.decimal :rate
      t.text :description
      t.integer :category_id
      t.timestamps
    end
  end
end
