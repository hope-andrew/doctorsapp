class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :group_id

      t.timestamps
    end
  end
end
