class AddStyle2ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :style2, :string
  end
end
