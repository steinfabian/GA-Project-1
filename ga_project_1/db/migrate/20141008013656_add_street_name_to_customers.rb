class AddStreetNameToCustomers < ActiveRecord::Migration
  def change
  	add_column :customers, :street_name, :string
  end
end
