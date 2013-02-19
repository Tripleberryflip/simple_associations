# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# FOR REFERENCE
# Customer.create!(name=>'(string)', phone_number=>'(string)', contact=>'(string)')
# Order.create!(item_name=>'(string)', quantity=>(integer), total_cost=>(integer))
# Item.create!(name:'(string)')

Customer.delete_all
Order.delete_all
Item.delete_all

customer1 = Customer.create!(:name=> "High Tempo", :phone_number=> "651-323-3232", :contact=> "Dylan Ethen")
customer2 = Customer.create!(:name=> "Bob's Snowy Mountain", :phone_number=> "651-651-6516", :contact=> "Bob Burgerman")
customer3 = Customer.create!(:name=> "The House Boardshop", :phone_number=> "651-238-2383", :contact=> "Todd Richards")

item1 = Item.create!(:name=>"Shoes")
item2 = Item.create!(:name=>"Burton Boots")
item3 = Item.create!(:name=>"Lib Tech Snowboard")

customer1order1 = Order.create!(:customer_name=> "High Tempo", :item_name=>"Shoes", :quantity=> 230, :total_cost=> 11500)
customer1order2 = Order.create!(:customer_name=> "High Tempo", :item_name=>"Burton Boots", :quantity=> 150, :total_cost=> 30000)
customer1order3 = Order.create!(:customer_name=> "High Tempo", :item_name=>"Lib Tech Snowboard", :quantity=> 75, :total_cost=> 22500)


customer2order1 = Order.create!(:customer_name=> "Bob's Snowy Mountain", :item_name=>"Shoes", :quantity=> 1000, :total_cost=> 50000)
customer2order2 = Order.create!(:customer_name=> "Bob's Snowy Mountain", :item_name=>"Burton Boots", :quantity=> 500, :total_cost=> 100000)
customer2order3 = Order.create!(:customer_name=> "Bob's Snowy Mountain", :item_name=>"Lib Tech Snowboard", :quantity=> 300, :total_cost=> 90000)


customer3order1 = Order.create!(:customer_name=> "The House Boardshop", :item_name=>"Shoes", :quantity=> 80, :total_cost=>4000)
customer3order2 = Order.create!(:customer_name=> "The House Boardshop", :item_name=>"Burton Boots", :quantity=> 100, :total_cost=> 20000)
customer3order3 = Order.create!(:customer_name=> "The House Boardshop", :item_name=>"Lib Tech Snowboard", :quantity=> 102, :total_cost=> 30600)