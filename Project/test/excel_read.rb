require 'roo'

workbook = Roo::Excel.new('e:\test.xls')
workbook.default_sheet=workbook.sheets[0]
headers=Hash.new
workbook.row(1).each_with_index { |header,i |
headers[header]=i
}

((workbook.first_row+1)..workbook.last_row).each do |row|
  wbRow=workbook.row(row)
  username = wbRow[headers['UserName']]
  password=wbRow[headers['Password']]
  print "Row = #{username},#{password}"
  print "\n"
end

