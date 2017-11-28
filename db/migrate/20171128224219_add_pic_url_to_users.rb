class AddPicUrlToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :pic_url, :text
  end
end
