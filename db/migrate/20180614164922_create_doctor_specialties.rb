class CreateDoctorSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :doctor_specialties do |t|
      t.references :specialty_id, foreign_key: true

      t.timestamps
    end
  end
end
