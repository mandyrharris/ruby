# Write a program that asks for your favorite Crayola crayon and then takes the string and yells it back in all caps and in reverse.
# # puts “whats..crayon?”

# # crayon = gets.chomp.upcase.reverse

# # puts crayon

# Write a program that asks for your mood for the day, then returns the length of the string. Then return the string with 'meow' prepended to it.

# puts “what mood?”
# mood = gets.chomp
# puts mood.length
# puts “meow” + mood

# Write a program that asks for a sentence. Then ask for their favorite word in that sentence. Then tell them what index that word starts at. See the Ruby Docs page for String for a handy method to use. 

# puts “provide sentence”
# sentence = gets.chomp
# puts “what is your fav word in sentence?”
# word = gets.chomp
# puts “the index of your word is {sentence.index(word)}"

# Write a program that asks for the cost of your dinner at a restaurant. The program will return back to you a tip of 18% of your meal cost. Make sure the tip is always returned with two decimal places.

# puts “how much did your dinner cost?”
# cost = gets.chomp.to_f
# tip = (cost * 0.18)
# total = cost + tip
# puts “your tip is” = ((tip.round2)).to_s + “ and your total is "

# Write a program that accepts your age. Convert your age to how old you are in seconds. Convert your age to how old you would be on the 8 different planets (hint: search planet rotation conversion rates). Output what your age in years would be on each planet.

# puts "Hey, how old are you?"
# age = gets.chomp.to_i
# puts "Wow! Did you know that you are #{age * 365 * 24 * 60 * 60} seconds old here on Earth, #{age / 0.241} years on Mercury,
#  #{age / 0.615} years on Venus, #{age / 1.881} years on Mars, #{age / 11.86} years on Jupiter, #{age / 29.46} years on Satrurn,
#  #{age / 84.021} years on Uranus, #{age / 164.8} years on Neptune, and #{age / 248.6} years on on Pluto;
# # #  which is totally still a planet in my book!"

# Create a Mad Libs program with at least 10 inputs and a minimum of one each of these: verb, plural noun, adjective, preposition, geographical feature, object, number.


# puts "Now we are going to play Mad Libs! YAY!"
# puts "Please give me a verb."
# verb = gets.chomp
# puts "Please give me a plural noun."
# p_noun = gets.chomp
# puts "Please give me an adjective."
# adjective = gets.chomp
# puts "Please give me a preposition (for instance: upon, between, on, around, etc.)"
# preposition = gets.chomp
# puts "Please give me a geographical feature."
# g_feat = gets.chomp
# puts "Please give me an object."
# object = gets.chomp
# puts "Please give me a number."
# number = gets.chomp
# puts "OK, now it's story time!"
# puts "Once upon a time, there was a " + adjective + " puppy dog named Beep. Beep liked to run and jump and " + verb + " " + preposition + " the yard all day long. One day, Beep found a new " + object + " in the yard. She took the " + object + " and trotted all the way out to the " + g_feat + " and buried it in the " + g_feat + " with the rest of the " + p_noun + " she had put there. " + number + " " + p_noun + ". Beep was a very special dog."






# # empty_array = []
# # new_array = Array.new
# # my_array = [1, 2, 3]
# # my_other_array = ["uno", "dos", "tres"]
# # yet_another_array = [1.0, "duece", 3, true]
# # and_another_array = [[1.0, "duece", 3, true], [2.0, "fast", 2, false]]

# # hash

# # my_hash = {"key" => "value", "another_key" => "another_value"}

# # empty_hash = {}
# # also_empty = Hash.new 
# # my_other_hash = {"name" => "Clarise", "role" => "Superhero", "Age" => 56}

# # my_other_hash.first


# # Symbols
# # :name

# # ask the user for a number 1-10, print the doubles of their number through 10.

# # puts "please give me a number between 1 and 10"

# # num = gets.chomp.to_i

# # until num > 10
# # 	puts num*2
# # 	num +=1
# # end

# # puts "please give me a number between 1 and 10"

# # num = gets.chomp.to_i

# # until num == 10
# # 	puts num*2
# # 	num -=1
# # end

# # until dad says yes, keep asking if we can got to itchy scratch land

# 	# puts "hey dad! can we go to itchy scratchy land?"

# 	# answer = gets.chomp.downcase

# 	# until answer == "yes" || answer == "yep" || answer == "sure"
# 	# 	puts "can we please go to itchy scratchy land?"
# 	# 	answer = gets.chomp
# 	# end
# 	# puts "yay"

# # 	puts "please give me a number between 1 and 10"

# # num = gets.chomp.to_i

# # while num > 10
# # 	puts num*2
# # 	num -=1
# # end

# # until dad says yes, keep asking if we can got to itchy scratch land

# 	# puts "hey dad! can we go to itchy scratchy land?"

# 	# answer = gets.chomp.downcase

# 	# while answer != "yes" || answer != "yep" || answer != "sure"
# 	# 	puts "can we please go to itchy scratchy land?"
# 	# 	answer = gets.chomp
# 	# end
# 	# puts "yay"

# 	# puts "please enter your name"

# 	# name = gets.chomp

# 	# until name == "amanda"
# 	# 	puts "Please enter your name"
# 	# 	name = gets.chomp
# 	# end


# # 	puts "Please enter your name"

# # 	name = gets.chomp.downcase

# # 	while name != "amanda"
# # 		puts "Please enter your name"
# # 		name = gets.chomp
# # 	end

# # puts "ok, cool"

# # write a loop that continues to display random numbers between 1 and 10 until the number generated is 7.


# # num = rand(1..10)

# # while num != 7
# # 	puts num
# # 	num = rand(1..10)

# # end
# # puts num



# # Each Loop

# # my_array = [1, 2, 3, 4, 5]

# # my_array.each do |x|
# # 	puts x
# # end

# # cars = ["ford", "toy", "honda", "fiat"]
# # cars.each do |car|
# # 	puts car
# # end

# # animals = %w(cat dog rhino flamingo kangaroo)

# # favorite = "flamingo"

# # animals.each do |animal|
# # 	if animal == favorite
# # 		puts "I love #{favorite}'s"
# # 	else
# # 		puts "no I don't like #{animal}'s"
# # end
# # end

# # animals.include? favorite


# # Each_with_index


# profile = {}
# puts "tell us about yourself"

# puts "what is your name"
# profile["name"] = gets.chomp

# puts "what is your age"
# profile["age"] = gets.chomp

# puts "what is your hometown"
# profile["hometown"] = gets.chomp

# puts "what is your favorite food"
# profile["favorite food"] = gets.chomp

# profile.each do |key, value|
# 	case key
# 	when "name"
# 		puts "this is #{value}"
# 	when "age"
# 		puts "they are #{value} years old"
# 	when "hometown"
# 		puts "they are from #{value}"
# 	when "favorite food"
# 		puts "they love #{value}"
# 	end
# end

# #ask for 5 nums, store in an Array, find sum, product, largest and smallest of nums

# puts "give me 5 numbers:"
# numbers = gets.chomp
# numbers.split

# numbers.each_with_index do |num, index|
# numbers [index] = num.to_i
# end

# sum = 0
# product = 1

# numbers.each do |num|
# 	sum += num
# 	product *= numb
# end

# puts "the sum is #{sum}"
# puts "the product is #{product}"
# puts "the smallest number is #{numbers.sort.first}"
# puts "the largest number is #{numbers.sort.last}"

