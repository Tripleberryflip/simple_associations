class Customer < ActiveRecord::Base
  attr_accessible :contact, :name, :phone_number

  # Associations
  has_many :order # A customer can have many orders
end
