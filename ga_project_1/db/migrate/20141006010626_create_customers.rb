class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :password_digest
    	t.string :unit_number
    	t.string :street_number
    	t.string :suburb
    	t.string :postcode
    	t.string :suburb
    	t.timestamps
    end
  end
end
