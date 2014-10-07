class OrderController < ApplicationController
	
	def new
		@order = Order.new
	end

	def create
		@order = Order.create order_params
		redirect_to checkout_path(@order.id)
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