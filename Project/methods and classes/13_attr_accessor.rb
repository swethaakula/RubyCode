
puts "\n\nattr_accessor "
class Item
    attr_accessor :quantity, :item_name

    def initialize(item_name, quantity)
        @item_name = item_name
        @quantity = quantity
    end

    ##setter for quantity
    #def quantity=(value)
    #    @quantity = value
    #end
    #
    ##setter for item_name
    #def item_name=(value)
    #    @item_name = value
    #end
    #
    ##getter for quantity
    #def quantity
    #    @quantity
    #end
    #
    ##getter for item_name
    #def item_name
    #    @item_name
    #end


end


item = Item.new("tv",1)
puts item.item_name
puts item.quantity

item.quantity = 2
item.item_name = "television"

puts item.item_name
puts item.quantity


