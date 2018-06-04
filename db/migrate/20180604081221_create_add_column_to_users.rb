class CreateAddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :add_column_to_users do |t|
      t.string :instrument1
      t.string :instrument2
      t.string :instrument3
      t.string :instrument4
      t.string :instrument5
      t.string :style1
      t.string :style2
      t.string :style3

      t.timestamps
    end
  end
end
