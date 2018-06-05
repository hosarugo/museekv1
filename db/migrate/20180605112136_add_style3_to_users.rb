class AddStyle3ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :style3, :string
  end
end
