class CreateKitchenPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :kitchen_pictures do |t|
      t.string :url
      t.integer :kitchen_id

      t.timestamps
    end
  end
end
