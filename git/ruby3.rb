# METHODS!!

# def method_name
# 	#something performed here
# end

# def dont_repeat_yourself
# 	#my program will do this anytime I ask it to
# end

# def hello
# 	puts hello world!
# end

# def two_plus_two
# 	sum = 2 + 2
# 	return sum 
# end

# def hello
# 	puts hello world!
# 	return 42
# end

puts "One number"
integer1 = gets.chomp.to_i
puts "Another number"
integer2 = gets.chomp.to_i

def addition(num1, num2)
	puts num1 + num2
end

puts addition(integer1, integer2)


# Create a method to convert lbs to kilos

def pounds_to_kilos(lbs)
	kilos = lbs * 0.453592
	return kilos.round(2)
end

puts "how many lbs of potatoes do you want?"
potatoes = gets.chomp.to_i

puts "that will be #{pounds_to_kilos(potatoes)} kilos"

#Take a string and reverse it

# def reverser(str)
# 	first_arr = str.split("")

# 	second_arr = []

# 	first_arr.each do |x|
# 		second_arr.insert(0,x)
# 	end

# 	second_arr.join()
# end

# puts "give me a string"

# word = gets.chomp
# puts reverser(word)


### create a method that coverts an array to a hash

# def array2hash(arr)
# 	my_hash = {}
# 	arr.each_with_index do |item, index|
# 		my_hash[index] = item
# 	end
# 	return my_hash
# end

# my_array = %w(broccoli tomatoes carrots onions parsley)

# puts array2hash(my_array)

# **prints {0=>"broccoli", 1=>"tomatoes", 2=>"carrots", 3=>"onions", 4=>"parsley"}

# In Ruby 6 / 4 == 1. But what if we want the remainder also?
# Write a program that asks for two (2) Integers, divides the first by the second and returns the result including the remainder.
 
# If either of the numbers is not an Integer, then don't accept the number and ask again.
 
# Do not accept zero (0) as a number.

# method to see if input is not a whole number,
# if there is a period/decimal point, we can
# assume they meant to enter a float.

# def float_check(num)
# 	if num.include? (".")
# 		return true
# 	else
# 		return false
# 	end
# end

# # method to see if input is zero.
# # num will be an integer by this point.

# def zero_check(num)
# 	if num == 0
# 		return true
# 	else
# 		return false
# 	end
# end

# def take_number
# 	print "please give me a number"
# 	num = gets.chomp

# 	if float_check(num) #is true, if defaults to check true
# 		puts "that's a float, we want an integer"
# 		take_number
# 	else
# 		num = num.to_i
# 		if zero_check(num) #is true, if defaults to check true
# 		puts "give an integer thats not zero"
# 		else
# 			return num
# 		end
# 	end
# end

# arr = []

# 2.times do 
# 	num = take_number
# 	arr.push(num)
# end

# if arr[0]%arr[1] == 0
# 	puts "#{arr[0]}/#{arr[1]} = #{arr[0]/arr[1]}"
# else  
# 	puts "#{arr[0]}/#{arr[1]} = #{arr[0]/arr[1]}, with a remainder of #{arr[0]%arr[1]}"
# end

# *****One line if statements*** 
# Code first THEN conditional comes 2nd - code wont happen unless contition is met

# condition ? return when true : return when false


# if x = 50
# 	puts "we're halfway there"
# end

# puts "we're halfway there" if x = 50"


# **
# unless problems.include? ("glitch")
# 	puts "I got 99 problems..."
# end

# puts "I got 99 problems..." unless problems.include? ("glitch")


# ****Ternary Operator*****(one line if statement) Code first THEN conditional comes 2nd - code wont happen unless contition is met

# condition ? return when true : return when false
# ***
# # condition ? return when true : return when false

# if x >50
# 	puts "over halfway there!"
# else 
# 	puts "still a ways to go"
# end

# puts x >50 ? "over halfway there!" : "still a ways to go"

# if arr.include?(42)
# 	answer = "everything"
# else
# 	answer = "nothing"
# end

# answer = arr.include?(42) ? "everything" : "nothing"

# puts "enter dog or cat"
# answer = gets.chomp

# if answer == "dog"
# 	puts "woof"
# else
# 	puts "meow"
# end

# puts answer == "dog" ? "woof" : "meow"

# puts "give me a number"
# num = gets.chomp.to_i
# comp_num = 9

# # if comp_num == 9
# # 	puts "wow"
# # else
# # 	puts "nope!"
# # end

# puts num == comp_num ? "wow" : "nope"






