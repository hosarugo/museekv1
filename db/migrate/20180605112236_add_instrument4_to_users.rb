class AddInstrument4ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :instrument4, :string
  end
end
