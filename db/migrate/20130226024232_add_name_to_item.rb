class AddNameToItem < ActiveRecord::Migration
  def change
    remove_column :orders, :item_name
  end
end
