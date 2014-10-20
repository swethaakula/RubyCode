=begin

require "dbi"
require 'mysql'

begin
  dbh = DBI.connect("DBI:Mysql:testdb:localhost",
                    "testusr", "test123")
  row = dbh.select_one("SELECT VERSION()")
  puts "Server version: "+row[0]
rescue DBI::DatabaseError => e
  puts "An error has occured."
  puts "Error code #{e.err}"
  puts "Error String #{e.errstr}"
ensure
  dbh.disconnect if dbh
end
=end

gem 'mysql'
gem 'dbi'

require 'dbi'
require 'Mysql'
#require 'mysql2'
require 'rubygems'

begin
  # connect to the MySQL server
  dbh1 = DBI.connect("DBI:Mysql:testdb:localhost",
                    "testusr", "test123")
  # get server version string and display it
  row = dbh1.select_one("SELECT VERSION()")
  puts "Server version: " + row[0]
rescue DBI::DatabaseError => e
  puts "An error occurred"
  puts "Error code:    #{e.err}"
  puts "Error message: #{e.errstr}"
ensure
  # disconnect from server
  dbh1.disconnect if dbh1
end