class AddInstrument2ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :instrument2, :string
  end
end
