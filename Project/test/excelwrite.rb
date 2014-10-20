require 'spreadsheet'

#TEST_FILE = "e:\test.xls"

wb=Spreadsheet.open 'e:\test1.xls'
sheet = wb.worksheet 0
sheet.each do |row|
  row[0]='swetha'
  row[1]='Akula'
end

wb.write 'e:\test2.xls'