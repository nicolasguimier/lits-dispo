class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :contact_infos
      t.string :phone
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :free_beds_number

      t.timestamps
    end
  end
end
