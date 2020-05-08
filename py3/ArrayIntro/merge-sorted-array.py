"""
Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

Note:

    The number of elements initialized in nums1 and nums2 are m and n respectively.
    You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.

"""
#What I get from this is if I am appending/merging/w.ever, I should start from the end of the array if I am not using any language libraries
class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        last=m+n-1 #Sets the combined length of the array that starts at 0
        m,n=m-1,n-1 # Reduces the indexes by 1 to avoid pointing at invalid areas
        for i in range(last, -1, -1): #  Iterates from the back until -1, reduces the iterator by 1 per pass
            if n >= 0 and m >= 0: # If the indexes used to check the arrays are still greater than or equal to 0
                if nums2[n] > nums1[m]: #If the number  in sorted array 2 is greater than sorted array 1
                    nums1[i] = nums2[n] # It is appended to the end of the list that doesn't have an element yet
                    n -= 1 # Index checking array 2 is reduced by 1
                else: #If number 2 isn't greater than number 1
                    nums1[i] = nums1[m] #Then number 1 is added to the next empty slot/slot that hasn't moved
                    m -= 1 #Next element in num1 will be checked
            elif n >= 0: #If we have iterated through all of array 1 but there still is an element in the second array (which means that the remaining numbers are smaller than anything in the first array)
                nums1[i] = nums2[n]
                n -= 1

    #So essentially, passing through with nums1[1,2,3,0,0,0] and nums2[2,5,6], m=3, n=3
    #Round 1: [1,2,3,0,0,0], m=2, n=2, last=5
    #Round 2: [1,2,3,0,0,6], m=2, n=1, last=4
    #Round 3: [1,2,3,0,5,6], m=2, n=0, last=3
    #Round 4: [1,2,3,3,5,6], m=1, n=0, last=2
    #Round 5: [1,2,2,3,5,6], m=0, n=-1, last=1
    #Remember, both lists are already sorted. Element 3  in array2 cannot be smaller than element 2 or 1, like wise in array 3. 
