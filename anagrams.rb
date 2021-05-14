require "byebug"
def first_anagram?(str1, str2)
    char_array = str1.chars
    i=0
    perms = str2.chars.permutation.to_a
    perms.include?(char_array)
end #n!

def second_anagram?(str1, str2)
    return false if str1.length != str2.length
    chars = str2.chars

    str1.each_char.with_index do |char1, idx1|
        # debugger
        index = chars.index(char1)
        return false if !index
        chars.delete_at(index)
    end

    return chars.empty?

end

def third_anagram?(str1, str2)
    chars1 = str1.chars.sort
    chars2 = str2.chars.sort

    chars1 == chars2
    
end

def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char {|chars| hash1[chars] += 1}
    str2.each_char {|chars| hash2[chars] += 1}

    hash1 == hash2
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true