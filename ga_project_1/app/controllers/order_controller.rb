class OrderController < ApplicationController
	
	def new
		@order = Order.new
	end

	def create
		@order = Order.create order_params
		redirect_to login_path
	end

	def checkout
	end

	def update
	end

	def confirmation
	end

	def index
		@orders = Order.all
	end

	private
	def order_params
		params.require(:order).permit(:top_size, :top_colour, :bottom_size, :bottom_colour)
	end

end