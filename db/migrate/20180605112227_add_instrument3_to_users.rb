class AddInstrument3ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :instrument3, :string
  end
end
