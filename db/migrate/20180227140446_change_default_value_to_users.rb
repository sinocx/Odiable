class ChangeDefaultValueToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :transporter, :boolean, :default => false
  end
end
