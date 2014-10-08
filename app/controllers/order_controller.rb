class OrderController < ApplicationController
	
	def new
		@order = Order.new
	end

	def create
		@order = Order.create order_params
		@order.update :status => 'pending'
		session[:order_id] = @order.id
		if @customer = @current_customer
			redirect_to checkout_path session[:order_id]
		else
			redirect_to login_path
		end
	end

	def checkout
		@customer = @current_customer
	end

	def complete
		@customer = Customer.find session[:customer_id]
		@order = Order.find session[:order_id]
		@order.update :status => 'confirmed'
	end

	def index
		@orders = Order.all
	end

	private
	def order_params
		params.require(:order).permit(:top_size, :top_colour, :bottom_size, :bottom_colour)
	end

end