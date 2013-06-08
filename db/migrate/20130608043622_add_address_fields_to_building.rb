class AddAddressFieldsToBuilding < ActiveRecord::Migration
  def change
  	add_column :buildings, :state_id, :integer
  	add_column :buildings, :city_id, :integer
  	add_column :buildings, :street, :string
  end
end
