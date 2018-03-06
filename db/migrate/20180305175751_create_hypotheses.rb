class CreateHypotheses < ActiveRecord::Migration[5.1]
  def change
    create_table :hypotheses do |t|
      t.string :name

      t.timestamps
    end
  end
end
