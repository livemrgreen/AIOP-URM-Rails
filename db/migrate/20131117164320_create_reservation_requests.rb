class CreateReservationRequests < ActiveRecord::Migration
  def change
    create_table :reservation_requests do |t|
      t.date :date
      t.integer :teaching_id
      t.integer :time_slot_id
      t.string :status
      t.integer :reservation_id

      t.timestamps
    end
  end
end
