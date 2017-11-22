class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :guest_id
      t.integer :kitchen_id
      t.integer :guest_number
      t.date :date
      t.timestamps
    end
  end
end
