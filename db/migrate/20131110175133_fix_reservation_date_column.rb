class FixReservationDateColumn < ActiveRecord::Migration
  def change
  	rename_column :reservations, :date, :date_time
  	change_column :reservations, :date_time, :datetime
  end
end
