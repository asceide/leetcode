=begin
    Max Consecutive Ones:  Given a binary array, find the maximum number of consecutive 1s in this array.

    Hint 1: You need to think about two things as far as any window is concerned. One is the starting point for the window. How do you detect that a new window of 1s has started? The next part is detecting the ending point for this window. How do you detect the ending point for an existing window? If you figure these two things out, you will be able to detect the windows of consecutive ones. All that remains afterward is to find the longest such window and return the size.

=end
# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    maxSize=0 #Variable to hold the max size
    windowSize=0 #Variable to hold the minimum size
    nums.each do |n| #Loop to interate through the array
        if n==1 ##A consecutive window begins with a 1
            windowSize+=1  ##Increment the window size
        else #If the number is 0 then   the window has ended
            maxSize = (windowSize>=maxSize)? windowSize : maxSize #Compare to see which window is larger
            windowSize=0 #Reset window counter
        end
    end
    return maxSize=(windowSize>=maxSize)? windowSize : maxSize #Have to do one more comparision in case that the size of the array is just one or two elements
end