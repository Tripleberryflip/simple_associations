module CustomersHelper

	def display_customer_orders(customer)
		customerName = customer.name
		out = "<div class='container'><div class='hero-unit'><h1>#{customerName}'s Order Summary</h1></div>"
		out << "<table class= 'table border table-striped'><tr><th>Item Ordered</th><th>Quantity Ordered</td><td>Total Cost</td></tr>"
		if customer.orders.first.nil?
			out << "<td>This customer has no orders to show</td></tr>"
		else 
			customer.orders.each do |order|
				#link = link_to link_to "Customers" display_orders
				ordered_item = order.item_name
				ordered_quantity = order.quantity
				ordered_cost = order.total_cost
				out << "<td>#{ordered_item}</td><td>#{ordered_quantity}</td><td>#{ordered_cost}</td></tr>"
			end
		end
		out << "</table></div>"
		out.html_safe
	end
end
