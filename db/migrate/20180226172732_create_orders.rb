class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.date :checkin
      t.date :checkout
      t.string :aa
      t.string :ad
      t.string :uniquekey

      t.timestamps
    end
  end
end
