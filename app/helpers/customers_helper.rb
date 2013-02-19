module CustomersHelper

	def display_customer_orders(customer)
		out = ""
		out << "<table class= border-striped><tr><th>Customer</th></tr>"
		if customer.orders.nil?
			out << "<tr><td>This customer has no orders to show</td></tr>"
		else 
			customer.orders.each do |order|
				#link = link_to link_to "Customers" display_orders
				customer = customer
				order = order
				out << "<tr><td>#{customer}</td><td>#{order}</td></tr>"
			end
		end
		out << "</table>"
		out.html_safe
	end

	def customer_orders(customer)
		out = ""
		out << "<table class= table border table-striped><tr><th>Customer</th></tr>"
		if customer.nil?
			out << "<tr><td>This customer has no orders to show</td></tr>"
		else
			order = customer.orders.first
			out << "<tr><td>#{order}</td></tr>"
		end
		out << "</table>"
		out.html_safe
	end
end
