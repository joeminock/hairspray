class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :stylist, index: true, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
