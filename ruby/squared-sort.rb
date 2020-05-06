=begin

=end
# @param {Integer[]} a
# @return {Integer[]}

#Using the sorting function in ruby
def sorted_squares(a)
    sqarr=Array.new(a.length, 0)
    a.each_with_index do |n,x| #Add all of the  elements from array 1 to array 2
        sqarr[x]=n*n#Squaring it
    end
    return sqarr.sort #using stdlib sorting
end

#using mergesort