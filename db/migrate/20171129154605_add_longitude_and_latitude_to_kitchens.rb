class AddLongitudeAndLatitudeToKitchens < ActiveRecord::Migration[5.1]
  def change
    add_column :kitchens, :longitude, :float
    add_column :kitchens, :latitude, :float
  end
end
