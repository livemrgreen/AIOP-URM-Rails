class FixTimeSlotsColumnTypes < ActiveRecord::Migration
  def change
  	rename_column :time_slots, :start_date, :start_time
  	rename_column :time_slots, :end_date, :end_time
  	change_column :time_slots, :start_time, :datetime
  	change_column :time_slots, :end_time, :datetime
  end
end
