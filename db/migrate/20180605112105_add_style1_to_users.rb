class AddStyle1ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :style1, :string
  end
end
