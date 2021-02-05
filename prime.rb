# Easy Solution:
#   def prime? (integer)
#     require 'prime'
#     Prime.prime?(integer)
#   end


#My thought process:
  def prime? (integer)
    # create array of 1 to integer
    range_check = (1...integer+1).to_a
    # create empty array to store results
    divisable_number = []

    #iterate to see if integer is divisibale by range_check numbers 
      range_check.select do |num|  
        if integer % num == 0
          # if so, add into divisable_number array
          divisable_number << "yes"
        end
      end
    
    #count if array has only 2 numbers divisibale. If yes, then Prime number
    divisable_number.length == 2 ? true : false
   end
