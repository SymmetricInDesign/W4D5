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
    
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true