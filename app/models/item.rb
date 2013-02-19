class Item < ActiveRecord::Base
  attr_accessible :name

  # Associations
  belongs_to :order
end
