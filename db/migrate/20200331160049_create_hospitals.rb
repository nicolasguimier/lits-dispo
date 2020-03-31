class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :contact_infos
      t.string :phone
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :total_beds_nb
      t.integer :free_beds_number
      t.references :owner, foreign_key: {to_table: :users }

      t.timestamps
    end
  end
end
