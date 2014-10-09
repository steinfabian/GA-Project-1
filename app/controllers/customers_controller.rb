class CustomersController < ApplicationController

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.create customer_params
		session[:customer_id] = @customer.id
		if session[:order_id]
	        order = Order.find session[:order_id]
	        order.customer_id = @customer.id
	        order.save
      	end
		redirect_to checkout_path session[:order_id]
	end

	def show
		redirect_to login_path unless @current_customer
		@customer = @current_customer
		#define variable that looks up all order from customer with this id which have status confirmed
		@order_list = @customer.orders.where(:status => "confirmed")
	end

	def edit
		@customer = @current_customer
	end

	def update
		@customer = Customer.find params[:id]
		@customer.update customer_params
		redirect_to account_path 
	end

	def destroy
	end

	private
	def customer_params
		params.require(:customer).permit(:first_name, :last_name, :email, :password, :password_confirmation, :unit_number, :street_number, :street_name, :suburb, :postcode)
	end

end
