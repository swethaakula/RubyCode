require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => "mysql",
    :host => "localhost",
    :username => "testusr",
    :password => "test123",
    :database => "testdb"
)

class Employee < ActiveRecord::Base
  self.table_name = "emp"
  belongs_to :department,class_name:"Department", foreign_key: "Dept_id",:primary_key => "id"
end

class Department < ActiveRecord::Base
  self.table_name = "department"
  #self.primary_key = "id"
  #has_many :employees ,primary_key:"id",class_name:"Employee"
end

#Employee.create(:FIRST_NAME => 'Luc Juggery', :LAST_NAME => "Nashville, Tenessee")
# Employee.create(:first_name => 'Sunil Kelkar', :last_name => "Pune, India")
# Employee.create(:first_name => 'Adam Smith', :last_name =
# employee = Employee.find_by(FIRST_NAME: 'Luc Juggery' )
# puts employee.inspect
# # employee.update(SEX: 'M',INCOME: 3000)
# employee.SEX = 'F'
# employee.save
# employee = Employee.find_by(FIRST_NAME: 'swetha')
# employee.destroy
# Employee.update_all(INCOME: 3000)
# employees = Employee.all
# puts employees.inspect

# employees = Employee.where(Income: 3000).order('FIRST_NAME dESC')
# puts employees.inspect

employees = Employee.where(Sal: 100)
puts employees.first.department.inspect
puts employees[0].department.id
#
# department = Department.where(id: 2)
# puts department.employees

# departmentObj = Department.where(Name: 'HR')
# puts departmentObj.id
# employees = Employee.where(Dept_id: departmentObj.id)
# puts employees.inspect


