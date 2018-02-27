class CreateTransporters < ActiveRecord::Migration[5.1]
  def change
    create_table :transporters do |t|
      t.string :car
      t.string :capacity
      t.string :permit
      t.string :cin
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
