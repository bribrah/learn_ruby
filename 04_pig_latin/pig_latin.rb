def translate(str)
    vowel_reached = false
    str_array = str.split(" ")
    i = 0
    while i < str_array.length
        current_word = str_array[i]
        vowel_reached = false
        while vowel_reached == false
            if %w(a e i o u).include?(current_word[0]) and current_word[current_word.length-1] !="q"
                current_word += "ay"
                vowel_reached = true
                str_array[i] = current_word
                i+=1
            else
                first_letter = current_word[0]
                current_word[0] = ""
                current_word += first_letter
            end
        end
    end
    puts str_array
    str = str_array.join(" ")
end
