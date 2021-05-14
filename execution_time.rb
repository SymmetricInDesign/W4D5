

# def my_min(array)
#     array.inject do |acc, el|
#         if acc < el
#             acc 
#         else
#             el
#         end
#     end
# end

def my_min(array)
    array.each do |el1|
        smallest = true
        array.each do |el2|
            smallest = false if el2 < el1
        end
        return el1 if smallest
    end
end 
#n^2

def my_min(array)
    smallest = array[0]
    array.each do |el|
        smallest = el if smallest > el
    end
    smallest
end

#n

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_contiguous_subsum(list)
    possible_subsets = []
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            possible_subsets << list[i..j]
        end
    end
    largest = 0
    possible_subsets.each do |subset|
        sum = subset.sum
        largest = sum if sum > largest
    end
    largest
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7