class Solution:
    ##The below solution uses a mathematical solution
    def findNumbers(self, nums: List[int]) -> int:
        numEven=0 ##Holds the number of even digit elements in the array
        for n in nums: #Iterates through the array
            if self.find_digits(n)==True: numEven+=1 #Adds one if the function returns true, that a digit is even
        return numEven #Returns the number of even digit  elements in the array
        
    def find_digits(self,/, num):
        numDigits=1 #At minimum a digit has 1 digit
        while (num//10)!=0: #While the number isn't reduced to zero using floor/int division
            num=num//10
            numDigits+=1
        return True if (numDigits%2==0) else False # if the number of digits are 2
    
#The below solution uses  a string solution
    def findNumbers(self, nums: List[int]) -> int:
        numEven=0
        for n in nums:
            if(len(str(n))%2==0): numEven+=1
        return numEven
        