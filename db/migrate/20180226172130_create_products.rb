class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
