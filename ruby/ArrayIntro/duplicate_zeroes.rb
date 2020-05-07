# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
    #Count the number of Zeroes in the array
    zeroC=0
    arr.each do |x|
        if x==0
            zeroC+=1
        end
    end
    # Calculate the array length if we had kept all the elements
    kept_length=arr.length+zeroC
    
    # We start the iterations with a having a max of the number of elements in the array with a start of 0, 
    # and b having the same for the kept length array 
    a=arr.length-1
    b=kept_length-1
    
    # Kept length is used since we are pretending we are using an array that has kept all the numbers.
    # In practice, it is used for the shifting of the numbers in the original array. A shift occurs when
    # An element at position b is within the range of the original array, i.e. 0..n. There are two types
    # of shifts that can occur. A shift if the element at position a is 0 or a shift if the element is           # nonzero
    # if its zero and b is within the array length, 0 is duplicated. If it is not, the number is shifted.
    # Afterwards the counter for b is decreased by two if it is a 0, 1 if it is not, and a is decreased by 1
    
    #Lets look at an example
    # Round 1: [1,0,2,3,0,4,5,0], a=7, b=10. It is a 0 so it hits the if statement. However since b at this 
    # point isn't between the original 0 start array size (7), no swap occurs. B decreases by 2 and a by 1.
    # Round 2: [1,0,2,3,0,4,5,0], a=6, b=8. a element is 5. It is not a 0, so the if isn't accessed. 
    # b is still not within the range of the original array size, so nothing happens outside of decreasing
    # a and b by 1
    # Round 3: [1,0,2,3,0,4,5,0], a=5, b=7, a element is 4. Non zero, but the b is now within the original
    # array. So the element at position 5 (4) is copied/shifted to the element at position 7 (0).
    # Round 4: [1,0,2,3,0,4,5,4], a=4, b=6, a element is 0. Zero, so the element at position 6 (5) and 
    # position 5 (4) are overwritten by 0.
    # Round 5: [1,0,2,3,0,0,0,4], a=3, b=4, a element is 3. Element at 3 is copied to 4.
    # Round 6: [1,0,2,3,3,0,0,4], a=2, b=3, a element is 2. Element at 2 is copied to 3.
    # Round 7: [1,0,2,2,3,0,0,4], a=1, b=2, a element is 0. Element at b[2] and b[1] are set to zero
    # Round 8: [1,0,0,2,3,0,0,4]
    # At this point, b is less than a and the loop breaks.

    while(a>=0 && a<b) #Since we are starting from the end, and while the original array length is within the range length of the kept_length array
       if arr[a]==0 # If a zero is found at position a
          arr[b]=0 if b<=arr.length-1 # The number at position b is switched to 0 if b (the keptnumbers                                           # array length) is within the array size of the original array
          arr[b-1]=0 if b-1<=arr.length-1 # This is creating the duplicate pair. Again, must the index                                           # be within the original array
          b-=2 # B is decreased by two since the array shift was by 2
       else
          arr[b]=arr[a] if b<=arr.length-1 # If the element wasn't 0, then the array at position b is                                                  # overwritten with the element at position a if b is within the                                              # array length 
          b-=1 # Only one shift, so the number is decreased by 1
       end
        a-=1 # Decrease by one as we did the iteration.
    end
    
end
