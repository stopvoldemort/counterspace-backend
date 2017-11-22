class CreateKitchenReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :kitchen_reviews do |t|
      t.integer :stars
      t.text :review
      t.integer :guest_id
      t.integer :kitchen_id
      t.timestamps
    end
  end
end
