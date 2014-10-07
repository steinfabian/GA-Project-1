class CustomersController < ApplicationController

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.create customer_params
		redirect_to root_path
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
		redirect_to root_path 
	end

	def destroy
	end

	private
	def customer_params
		params.require(:customer).permit(:first_name, :last_name, :email, :password_digest, :unit_number, :street_number, :suburb, :postcode)
	end

end
