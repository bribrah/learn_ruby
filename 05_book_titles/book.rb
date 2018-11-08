class Book
    def title
        @title
    end
    def title= (str)
        words = str.split
        new_title = ""
        words.each_with_index do |word, index|
            if (word.length > 3 or index == 0 or word == "i") and %w(the a an)(word) 
                new_title = new_title + word.capitalize + " "
            else
                new_title = new_title + word + " "
            end
            @title = new_title.chop
        end
    end
end
