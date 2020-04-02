class AddStatusToHospitals < ActiveRecord::Migration[5.2]
  def change
  	add_column :hospitals, :status, :string, :null => false, :default => 'enabled'
  end
end
