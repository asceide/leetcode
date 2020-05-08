#Squares of a sorted array

class Solution: 
    def sortedSquares(self, A: List[int]) -> List[int]:
        for idx, val in enumerate(A): #Go through the list
            A[idx]=val**2 #Square the number
        A.sort() #Sort the array
        return A #Return the sorted array