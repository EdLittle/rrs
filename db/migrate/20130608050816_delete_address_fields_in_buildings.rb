class DeleteAddressFieldsInBuildings < ActiveRecord::Migration
  def up
  	remove_column :buildings, :state_id
  	remove_column :buildings, :city_id
  	rename_column :buildings, :street, :street_address
  end

  def down
  end
end
