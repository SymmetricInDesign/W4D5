

#arr[i...i w].max - min


def windowed_max_range(arr, w)
    current_max_range = 0
    (0..arr.length - w).each do |i|
        window = arr[i...i+w]
        diff = window.max - window.min
        if current_max_range < diff
            current_max_range = diff
        end
    end
    current_max_range
end
p windowed_max_range([1, 0, 2, 5, 4, 8], 2)# == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3)# == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4)# == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5)# == 6 # 3, 2, 5, 4, 8