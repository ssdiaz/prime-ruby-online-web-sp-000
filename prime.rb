# Easy Solution:
#   def prime? (integer)
#     require 'prime'
#     Prime.prime?(integer)
#   end

#My thought process:
  def prime? (integer)
    range_check = (1...integer+1).to_a   # create array of 1 to integer
    divisable_number = []                # create empty array to store results

      range_check.select do |num|        #iterate to see if integer is divisibale by range_check numbers
        if integer % num == 0
          divisable_number << "yes"      # if so, add into divisable_number array
        end
      end

    divisable_number.length == 2 ? true : false  #count if array has only 2 numbers divisibale. If yes, then Prime number
   end
