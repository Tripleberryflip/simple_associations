class Item < ActiveRecord::Base
  attr_accessible :name

  # Associations
  has_many :orders
end
