class CreateAdvertisments < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisments do |t|
      t.string :main_category
      t.string :category
      t.string :listing_name
      t.string :title
      t.text :description
      t.string :address
      t.integer :price
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
