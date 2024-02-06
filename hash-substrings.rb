def get_substrings (string, dictionary)
  
  substrings_count = Hash.new(0)
  dictionary.each do |word|
    words = string.split(" ")
    words.each do |w|
      if w.include?(word)
        substrings_count[word] += 1
      end
    end
  end
  substrings_count
end

def get_dictionary()
  puts "Enter words to add them to the dictionary. Press enter to compile dictionary."
  dictionary = gets.chomp.split(" ")
  return dictionary
end

def get_string()
  puts "Enter a string to search for substrings."
  string = gets.chomp
  return string
end

puts get_substrings(get_string, get_dictionary)
