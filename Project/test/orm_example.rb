require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter  => "mysql",
    :host     => "localhost",
    :username => "testusr",
    :password => "test123",
    :database => "testdb"
)

class Product < ActiveRecord::Base
end

# p = Product.new
# p.name = "LapTop"
# puts p.name

# class Product < ActiveRecord::Base
#   self.table_name = "PRODUCT"
# end

# class Product < ActiveRecord::Base
#   self.primary_key = "product_id"
# end

# product=PRODUCT.new
# product = Product.create(name: "Book")

# product = Product.new
# product.name = "Laptop"
# product.save

# product = Product.new do |p|
#   p.name = "Mobile"
#   p.save
# end

#######################################


# products = Product.all
# products.each { |p|
#   puts p.id
#   puts p.name
# }
#
# product = Product.find_by(id:1)
# product.update(name: 'Book')

Product.update_all "Max_number = 3"

# product = Product.order('id desc')
# product.each {|p|
# puts p.id
# }

# product= Product.first
# puts product.id

product = Product.find_by(id:2)
product.destroy