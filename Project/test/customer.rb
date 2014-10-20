class Customer
  @@no_of_customers=0
  def initialize(id,name,address)
    @cust_id=id
    @cust_name=name
    @cust_addr=address
  end
  def displayDetails()
    puts "Customer id is #@cust_id"
    puts "Customer name is #@cust_name"
    puts "Customer Address is #@cust_addr"
  end

  def total_no_of_customers()
    @@no_of_customers +=1
    puts "total no of customers are #@@no_of_customers"
  end
end

customer1 = Customer.new(12, "Swetha", "Dublin,OHIO")
customer2 = Customer.new(13, "Ranjiht", "Dubiln,OHIO")

customer1.displayDetails
customer1.total_no_of_customers

customer2.displayDetails
customer2.total_no_of_customers
