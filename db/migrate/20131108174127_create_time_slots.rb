class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
