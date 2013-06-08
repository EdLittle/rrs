class RemoveDescriptionToRooms < ActiveRecord::Migration
  def up
  	remove_column :rooms, :description
  end

  def down
  end
end
