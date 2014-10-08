Customer.destroy_all
Order.destroy_all
Product.destroy_all


c1 = Customer.create(:first_name => 'Anna', :password => 'test', :password_confirmation => 'test', :email => 'anna@a.com')
c2 = Customer.create(:first_name => 'Amanda', :password => 'test', :password_confirmation => 'test', :email => 'amanda@a.com')
c3 = Customer.create(:first_name => 'Paula', :password => 'test', :password_confirmation => 'test', :email => 'paula@a.com')

p1 = Product.create(:product_name => 'Triangle') 
p2 = Product.create(:product_name => 'Bandeau')


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
