class CreateReservationRequests < ActiveRecord::Migration
  def change
    create_table :reservation_requests do |t|
      t.datetime :date_time
      t.integer :teaching_id
      t.integer :time_slot_id
      t.string :status

      t.timestamps
    end
  end
end
