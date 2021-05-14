
def bad_two_sum?(arr, target_sum)
    pairs = []
    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            if idx2 > idx1
                pairs << [num1, num2]
            end
        end
    end
    # p pairs
    pairs.each {|pair| return true if pair.sum == target_sum}
    false
end #n + n^2

def okay_two_sum?(arr, target_sum)
    sorted = arr.sort
    i=0
    j=sorted.length-1
    while j-i >= 1
        sum = sorted[i] + sorted[j]
        return true if sum == target_sum
        if sum > target_sum
            j-=1
        else
            i+=1
        end
    end
    
    false

end #nlogn

def two_sum?(arr, target_sum)
    hash = {}
    arr.each_with_index do |ele, idx| 
        return true if hash.has_key?(ele) && ele + ele == target_sum
        hash[ele] = idx
    end
    hash.each do |k, v|
        return true if hash.has_key?(target_sum - k) && k + k != target_sum
    end
    false
end

arr = [0, 1, 5,7, 11, 8, 13, 4]
p two_sum?(arr, 12) # => should be true
p two_sum?(arr, 10) # => should be false