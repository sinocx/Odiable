class AddDateTimeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :date_delivery, :datetime
  end
end
