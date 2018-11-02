#write your code here
def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, num = 2)
    repeat = ""
    while num>0
        if num > 1
        repeat += str + " "
        num -= 1
    else
        repeat += str       
        num -= 1
        end
    end
    return repeat
end

def start_of_word(str, num = 1)
    i = 0
    first_letters =""
    while i<num
        first_letters += str[i]
        i += 1
    end
    return first_letters
end

def first_word(str)
    first_word = ""
    i = 0
    while str[i] != " "
        first_word+= str[i]
        i+= 1
    end
    return first_word
end

def titleize(str)
    words = str.split.map do |word|
        if  %w(and over the).include?(word)
            word
        else
            word.capitalize
        end
    end
    words.first.capitalize!
    str = words.join(" ")
    return str
end