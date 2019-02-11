class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
    	t.integer :user_id
    	t.integer :shipping_address, null: false
    	t.string  :shipping_postcode, null: false
    	t.string  :shipping_name, null: false
      t.timestamps
    end
  end
end
