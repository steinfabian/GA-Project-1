class OrderController < ApplicationController
	
	def new
		@order = Order.new
	end

	def create
		@order = Order.new order_params
	end

	def checkout
	end

	def update
	end

	def confirmation
	end

	private
	def order_params
		params.require(:order).permit(:top_size, :top_colour, :bottom_size, :bottom_colour)
	end

end