class CreateGuestReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_reviews do |t|
      t.integer :stars
      t.text :review
      t.integer :host_id
      t.integer :guest_id
      t.timestamps
    end
  end
end
