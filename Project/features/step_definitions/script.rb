# require 'rasta/fixture/rasta_fixture'
#
# class Code
#   include Rasta::Fixture::RastaFixture
#   require 'rubygems'
#   require 'parseexcel'
#   workbook=Spreadsheet::ParseExcel.parse("e:\data.xls")
#   worksheet = workbook.worksheet(0)
#   $j=2
#   $get_head=[]
#   @file_content=@file_content.to_s
#   i=0
#   worksheet.each { |row|
#     if i==0 then
#       row.each do |item|
#         item= item.to_s.gsub("\000","")
#         $get_head << item
#       end
#     end
#     break
#   }
#   $get_head.each do |head|
#     #puts head
#     head=head.to_s
#     if head != "created?"
#       attr_accessor head.to_sym
#     end
#   end
#
#   def created?
#     @file=File.readlines("main_feature.feature")
#     @file=@file.to_s
#
#     $get_head.each do |head|
#       head=head.to_s
#       if head != "created?"
#         begin
#           @file=@file.gsub("@#{head.to_s}",eval(head))
#         rescue
#           puts "Leave it"
#         end
#       end
#     end
#     #@file=@file.gsub("@feature_name","@#{file_name}")
#     @new_file=File.open("result_features\\#{file_name}.feature",'w')
#     @new_file.puts @file
#     @new_file.close
#     return true
#   end
#
# end