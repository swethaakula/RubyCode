def rtoi(romaNumber)
   valueMap = Hash.new
   valueMap['I']=1
   valueMap['V']=5
   valueMap['X']=10
   valueMap['L']=50
   valueMap['C']=100
   valueMap['D']=500
   valueMap['M']=1000
   integer_value =0
   tempValue =0
   for i in 0..(romaNumber.length-1)
     if(i<romaNumber.length-1 && (romaNumber[i] == 'V' || romaNumber[i] == 'L' || romaNumber[i] == 'D')&& romaNumber[i+1]== romaNumber[i])
       return "Invalid value specified"
     end
#CIIVIIV
     if(i<romaNumber.length-1 && valueMap[romaNumber[i]]<valueMap[romaNumber[i+1]])
         tempValue = tempValue+ (-1 * valueMap[romaNumber[i]])
     else
              if(tempValue==0)
                integer_value=integer_value+valueMap[romaNumber[i]]
              else
                  integer_value=integer_value+valueMap[romaNumber[i]]+tempValue
                  tempValue=0
              end
       end

     end
     if (integer_value> 3999)
       return "Invalid value specified"
     else
      return integer_value
     end

 end


puts rtoi('XCVIII')