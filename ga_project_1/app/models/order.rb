# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  customer_id   :integer
#  top_size      :string(255)
#  top_colour    :string(255)
#  bottom_size   :string(255)
#  bottom_colour :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  status        :string(255)
#

class Order < ActiveRecord::Base
	belongs_to :customer
	has_and_belongs_to_many :products

	
end
