class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.integer :customer_id
    	t.string :top_size
    	t.string :top_colour
    	t.string :bottom_size
    	t.string :bottom_colour
    	t.timestamps
    end
  end
end
