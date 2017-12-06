class AddMillisecondsToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :milliseconds, :float
  end
end
