class AddBlurbToKitchens < ActiveRecord::Migration[5.1]
  def change
    add_column :kitchens, :blurb, :string
  end
end
