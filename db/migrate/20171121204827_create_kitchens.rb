class CreateKitchens < ActiveRecord::Migration[5.1]
  def change
    create_table :kitchens do |t|
      t.string :title
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.text :description
      t.integer :size
      t.integer :max_guests
      t.integer :base_price
      t.integer :price_per_guest
      t.string :knives
      t.string :pots
      t.string :pans
      t.boolean :food_processor
      t.boolean :standing_mixer
      t.boolean :deep_fryer
      t.boolean :pressure_cooker
      t.integer :owner_id
      t.timestamps
    end
  end
end
