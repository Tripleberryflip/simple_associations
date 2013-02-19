class AddCustomerNameToOrders < ActiveRecord::Migration
  def change
  	self.up
    	add_column :orders, :customer_name, :string
  end
end
