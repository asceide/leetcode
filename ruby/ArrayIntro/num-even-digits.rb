=begin
    Find numbers with Even Digits - Given an array nums of integers, return how many of them contain an even number of digits. 
    Hint 1:  How to compute the number of digits of a number ?
    Hint 2: Divide the number by 10 again and again to get the number of digits.

=end
# @param {Integer[]} nums
# @return {Integer}
# Mathematical method. The amount of digits is number is based off a their decimal/base 10 count. So to find the digits we will  divide the number by 10 until the division reaches 0. (single digit/10=0)
def find_numbers(nums)
    totalNum=0 #Counter to hold the number of  digits per 
    nums.each do |n| #Loop to iterate through the array
      totalNum+=1 if (count_number(n)%2)==0 #Increases the number of elements of the array that hold an even number of digits, calling the count number function
    end
    return totalNum #returns the total umber
end

def count_number(num)
    count=1 #count is initialized to 1 as at minimum there are 1 digits in a number
    while(num/10>0) #while the number still has more than 1 digit
        count+=1 #increment the count of digits
        num=num/10 #divide the number by 10
    end
    return count #returns the number of digits
end

#String method
def find_numbers(nums)
    count=0
    nums.each do |n|
        if (n.to_s.length)%2==0 #Converts the  number to a string and see if the length is a factor of 2 (even)
            count+=1
        end
    end
    return count
end