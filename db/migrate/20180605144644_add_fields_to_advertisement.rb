class AddFieldsToAdvertisement < ActiveRecord::Migration[5.1]
  def change
    add_column :advertisements, :latitude, :float
    add_column :advertisements, :longitude, :float
  end
end
