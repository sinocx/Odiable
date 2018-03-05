class CreateWidths < ActiveRecord::Migration[5.1]
  def change
    create_table :widths do |t|
      t.string :category
      t.timestamps
    end
  end
end
