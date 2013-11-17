class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :date_time
      t.integer :time_slot_id
      t.integer :romm_id
      t.integer :teaching_id

      t.timestamps
    end
  end
end
