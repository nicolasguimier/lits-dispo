class RemoveOwnerFromHospital < ActiveRecord::Migration[5.2]
  def change
  	remove_column :hospitals, :owner_id
  end
end
