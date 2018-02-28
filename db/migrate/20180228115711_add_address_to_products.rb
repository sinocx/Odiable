class AddAddressToProducts < ActiveRecord::Migration[5.1]
  def change
        add_column :products, :aa, :string
        add_column :products, :ad, :string
        remove_column :orders, :aa
        remove_column :orders, :ad
  end
end
