class AddWidthToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :width, foreign_key: true
  end
end
