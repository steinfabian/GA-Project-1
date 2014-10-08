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
		@customer = Customer.find params[:id]
	end

	def edit
		@customer = Customer.find params[:id]
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
