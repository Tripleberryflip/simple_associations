class Order < ActiveRecord::Base
  attr_accessible :item_name, :quantity, :total_cost, :customer_name, :customer_id, :item_id

  # Associations
  belongs_to :customer # an order belongs to a customer
  has_one :item # an order consists of one item

  # Validations
  before_validation :convert_customer_name_to_id

  validates :customer_id, :presence=>{ :message=>"name must be provided!" }

  # Method for updating the attributes so that a customer name can 
  # be converted into an id before validation
  def convert_customer_name_to_id
	   customer = Customer.find_by_name(self.customer_name)
	   self.customer_id = customer.id unless customer.nil?
  end

  # Method for mapping the item ID to the item from the collection selector
  # NOTE: I could not fully get the ID -> Name translation to work properly, so I added a text field to input the name by hand
  def convert_item_id_to_name
    item = Item.find_by_id(self.item_id)
    self.item_name = item_name unless item.nil?
  end

end
