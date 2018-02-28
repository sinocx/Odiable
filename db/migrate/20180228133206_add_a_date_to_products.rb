class AddADateToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :date, :datetime
  end
end
