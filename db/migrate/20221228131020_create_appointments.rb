class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      # belongs_to :author
      # belongs_to :patient
      t.references :patients, foreign_key: true
      t.references :physicians, foreign_key: true
      t.timestamps
    end
  end
end
