# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  product_name :string(255)
#  image        :text
#  price        :float
#  created_at   :datetime
#  updated_at   :datetime
#

class Product < ActiveRecord::Base
	has_and_belongs_to_many :orders
end
