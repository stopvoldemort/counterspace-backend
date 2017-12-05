class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :recipient_id
      t.integer :sender_id
      t.integer :reservation_id
      t.boolean :read
      t.float   :milliseconds
      t.timestamps
    end
  end
end
