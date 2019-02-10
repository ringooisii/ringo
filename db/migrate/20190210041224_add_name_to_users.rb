class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :last_name, :string, default: false, null: false
  	add_column :users, :first_name, :string, default: false, null: false
  end
end
