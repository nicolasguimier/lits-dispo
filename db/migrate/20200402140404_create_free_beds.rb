class CreateFreeBeds < ActiveRecord::Migration[5.2]
  def change
    create_table :free_beds do |t|
      t.integer :number
      t.references :hospital, index: true, foreign_key: true

      t.timestamps
    end
  end
end
