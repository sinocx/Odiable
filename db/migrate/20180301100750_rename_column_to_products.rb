class RenameColumnToProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :latitude, :ad_latitude
    rename_column :products, :longitude, :ad_longitude
    add_column :products, :aa_latitude, :float
    add_column :products, :aa_longitude, :float

  end
end
