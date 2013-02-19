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

end
