# class Item
#    def initialize(item_name, quantity)
#        @item_name = item_name
#        @quantity = quantity
#        #supplier = "Acme corp"
#    end
#
#    def show
#        puts @item_name
#        puts @quantity
#        #puts supplier
#    end
# end
#
# Item.new("tv",1).show
# Item.new("fridge",1).show

puts "\n\nGetter methods and classes"
class Item
    def initialize(item_name, quantity)
        @item_name = item_name
        @quantity = quantity
    end

    def item_name
        @item_name
    end
end

item = Item.new("tv",1)
puts item.item_name


puts "\n\nSetter methods and classes"
class Item
    def initialize(item_name, quantity)
        @item_name = item_name
        @quantity = quantity
    end

    def quantity=(new_quantity)
        @quantity = new_quantity
    end

    def quantity
        @quantity
    end
end

item = Item.new("tv",1)
puts item.quantity
item.quantity = 3
puts item.quantity

