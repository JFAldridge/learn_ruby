#write your code here
def echo str
    str
end

def shout str
    str.upcase
end

def repeat str, count = 2
    i = count
    new_str = str
    while i > 1
        i -= 1
        new_str += (" " + str)
    end
    new_str 
end

def start_of_word str, num
    str[0...num]
end

def first_word str
    str_arr = str.split(" ")
    str_arr[0]
end


def titleize(str)
    str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end

