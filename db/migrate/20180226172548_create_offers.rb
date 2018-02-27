class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.references :product, foreign_key: true
      t.references :transporter, foreign_key: true
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
