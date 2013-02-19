class AddCustomerIdToOrders < ActiveRecord::Migration
  def change
  	self.up
    	add_column :orders, :customer_id, :string
  end
end
