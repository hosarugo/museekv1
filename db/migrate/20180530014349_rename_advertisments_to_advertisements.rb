class RenameAdvertismentsToAdvertisements < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :advertisments, :advertisements
  end

  def self.down
    rename_table :advertisements, :advertisments
  end
end
