class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        windowSize=0 # Contains the current window size
        maxSize=0 #Contains the largest found window size
        for n in nums: #Iterate through the array
            if n==1: # If its one...
                windowSize+=1 #Adds to the consecutive
            else: #If its not a 1, resets the window
                if windowSize>maxSize: maxSize=windowSize #Checks the window to see if its the largest window yet
                windowSize=0 #Resets the window
        if windowSize>maxSize: maxSize=windowSize #One last check, useful in cases where there may be only 1 or E array elements
        return maxSize #Returns the max size.