class ChangeCustomerIdInOrders < ActiveRecord::Migration
  def up
  	change_column :orders, :customer_id, :integer
  end

  def down
  end
end
