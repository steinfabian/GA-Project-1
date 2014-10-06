class SwimwearController < ApplicationController
	
	def index
		@products = Product.all #retrieve all existing products from the database
	end

	def show
	end

end