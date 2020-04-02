class RemoveBedsFromHospitals < ActiveRecord::Migration[5.2]
  def change
  	remove_column :hospitals, :total_beds_nb
  	remove_column :hospitals, :free_beds_number
  end
end
