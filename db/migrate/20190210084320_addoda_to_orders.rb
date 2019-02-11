class AddodaToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_column :orders, :user_id, :integer
  	add_column :orders, :order_name, :string, :null => :false
  	add_column :orders, :order_address, :varcher, :null => :false
  	add_column :orders, :order_status, :integer, :null => :false
  end
end
