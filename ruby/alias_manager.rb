=begin pseudocode
downcase the whole name
split the name of the spy with .split(" ") into full_name array
this gives us an array with the first and last name. 
Then use .reverse to switch the first name and the last name
then use .char on each index of the array
This gives us an array in the array [[l,a,s,t,n,a,m,e],[f,i,r,s,t,n,a,m,e]]
then create arrays, vowels = "aeiou", and consonants = "bcdfghjklmnpqrstvwxyz"
loop through the first nested array and see if each letter is a constant or a vowel
if a vowel
	advance the vowel
	have conditional for u => a
if a constant
	advance the constant
	have conditional for z => a
then go to the next nested array and repeat
use .capitalize to capitalize the first letter of the name

use smaller methods
	one method to split and nest the arrays
	one method to create the fake name
	one method to join the nested array back to a string
=end

# initialize array method
def initialize_array(real_name)
	full_name = real_name.downcase.split(" ")
	full_name.map! { |names|
		names.chars
	}
	full_name.reverse
end

# next_letter method finds the next letter given an array of letters

def next_letter(name_array)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	index = 0
	name_array.map { |name|
		name.map {|letter|
			if vowels.include? letter
				if letter == "u"
					letter = "a"
				else
					index = vowels.index(letter) + 1
					letter = vowels[index]
				end
			elsif consonants.include? letter
				if letter == "z"
					letter = "b"
				else
					index = consonants.index(letter) +1
					letter = consonants[index]
				end
			end
		}
	}
end

# Joins the arrays into strings and then joins the two strings
def finalize(fake_name)
	fake_name.map! {|name|
		name.join.capitalize
	}
	fake_name.join(" ")
end
# driver code
# p initialize_array("Herman Diggs")
# p next_letter([["t","o","r","r","e","s"],["f","e","l","i","c","i","a"]])
# p finalize([["v", "u", "s", "s", "i", "t"], ["g", "i", "m", "o", "d", "o", "e"]])
# p finalize(next_letter(initialize_array("Felicia Torres")))

# Add an interface
# Adds data structure
real_name = ""
spy_list = {

}
until real_name == "quit" do 
	puts "Enter your name"
	real_name = gets.chomp
	if real_name == "quit" 
		break
	end
	spy_name = finalize(next_letter(initialize_array(real_name)))
	spy_list[real_name.to_sym] = spy_name
	puts "Your secret name is #{spy_name}"
end

spy_list.each do |real, spy|
	puts "#{spy}'s real identity is actually #{real}!"
end
	