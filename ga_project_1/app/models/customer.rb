# == Schema Information
#
# Table name: customers
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  unit_number     :string(255)
#  street_number   :string(255)
#  suburb          :string(255)
#  postcode        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Customer < ActiveRecord::Base
	# has_secure_password
  	has_many :orders

  	# validates :first_name, :presence => true, :uniqueness => true, :length => {:minimum => 2}
  	# validates :email, :presence => true, :uniqueness => true
end
