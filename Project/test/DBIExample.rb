
gem 'mysql'
 gem 'dbi'

require "dbi"
require 'mysql'
require 'rubygems'

begin
  # connect to the MySQL server
  dbh = DBI.connect("DBI:Mysql:testdb:localhost",
                    "testusr", "test123")
  ##################################################
  # get server version string and display it
  # row = dbh.select_one("SELECT VERSION()")
  # puts "Server version: " + row[0]
###############################################
#############################################
#     dbh.do("DROP TABLE IF EXISTS EMPLOYEES")
#     dbh.do("CREATE TABLE EMPLOYEE (
#  FIRST_NAME char(20) NOT NULL,
# LAST_NAME char(20),
# AGE INT,
# SEX char(1),
# INCOME FLOAT)");
######################################################

  #   sth=dbh.prepare("INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,AGE,SEX,INCOME) VALUES (?,?,?,?,?)")
  #   sth.execute('john','poul',40,'M',3000)
  #   sth.execute('george','g',23,'M',4000)
  #   sth.finish
  #   dbh.commit
  # puts "Recored has been created"

#################################################

    sth= dbh.prepare("SELECT * FROM EMPLOYEE WHERE INCOME > ?")
    sth.execute(1000)

    sth.fetch do |record|
      printf "First Name: %s, Last Name: %s\n", record[0],record[1]
      printf "Age: %d, Sex: %s\n",record[2],record[3]
      printf "salary: %d \n\n", record[4]
    end

    sth.finish

#########################################################

    # sth = dbh.prepare("UPDATE EMPLOYEE SET AGE = AGE+1 WHERE SEX= ?")
    # sth.execute('M')
    # sth.finish
###################################################################

    # sth=dbh.prepare("DELETE FROM EMPLOYEE WHERE FIRST_NAME = ? ")
    # sth.execute("Ranjith")
    # sth.finish
    # dbh.commit
#####################################################################
rescue DBI::DatabaseError => e
  puts "An error occurred"
  puts "Error code:    #{e.err}"
  puts "Error message: #{e.errstr}"
    dbh.rollback
ensure
  # disconnect from server
  dbh.disconnect if dbh
end