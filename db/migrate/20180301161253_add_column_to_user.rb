class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :gender, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :active, :boolean
    add_column :users, :about, :text
    add_column :users, :address, :string
  end
end
