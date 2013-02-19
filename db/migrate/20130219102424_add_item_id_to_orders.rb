class AddItemIdToOrders < ActiveRecord::Migration
  def change
  	self.up
    	add_column :orders, :item_id, :integer
  end
end
