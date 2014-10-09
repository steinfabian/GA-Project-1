module ApplicationHelper

	def intellinav
	    nav = ''
	    if @current_customer.present?
	      nav += "<li>Hello #{ @current_customer.first_name }</li> "
	      nav += "<li>" + link_to('My account', account_path) + "</li> "
	      nav += "<li>#{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"
	    end
	    nav
	end

end
