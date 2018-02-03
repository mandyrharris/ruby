# Write a program that asks for a score (an integer), and assigns a letter grade based on the score. 

# Letter grades are assigned as follows:
# 100-90: A
#  89-80: B
#  79-70: C
#  69-60: D
# Less than 60: F
# More than 100: "Wrong score"

# puts "What is your score?"
# grade = gets.chomp.to_i
# if grade > 100
# 	puts "Wrong Score"
# elsif grade == 100 || grade >= 90
# 		puts "A"
# elsif grade == 89 || grade >= 80
# 		puts "B"
# elsif grade == 79 || grade >= 70
# 		puts "C"
# elsif grade == 69 || grade >= 60
# 		puts "D"
# else grade < 60
# 		puts "F"
# end

# puts "Give me a number"
# num1 = gets.chomp.to_i
# puts "Give me another number"
# num2 = gets.chomp.to_i
# num3 = num1 % num2

# if num3 == 0
# 	puts "Your number divides evenly"
# else
# 	puts "The remainder of your numbers is #{num3}"
# end

# Create a program that takes a name (or any word, really), and spells it out, one letter at a time (horizontally). Then have the name/word spelled out in one line (vertically), but with commas between each letter (but not after the last letter).

# puts "What's your name?"
# name = gets.chomp
# # first we'll spell out vertically:
# count = 0
# until count == name.length
#     puts name[count].upcase
#     count += 1
# end
# 
# another option:
# # name.each_char do |x|
# #   puts x
# # end

# now for the horizontal spell-out:
# count = 0
# while count < name.length
#     if count < name.length - 1
#         print "#{name[count].upcase}, "
#     else
#         puts "#{name[count].upcase}"
#     end
#     count += 1
# end

# Write a program that translates one English word into Pig Latin. Because the rules for Pig Latin can vary, I'll be specific:

# If the given word starts with a consonant, move only that consonant to end and then add "ay" to the end (e.g.: coffee -> offeecay, blogger -> loggerbay)
# If the given word starts with a vowel, add "way" to the end of the word (e.g., office -> officeway)

# print "Give me a word: "
# word = gets.chomp.downcase
# # convoluted way:
# if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
#     pl_word = word + "way"
# else
#     #word[0] = consonant
#     if word[1] != "a" && word[1] != "e" && word[1] != "i" && word[1] != "o" && word[1] != "u"
#         #word[1] is a consonant
#         pl_word = word[2..word.length-1] + word[0..1] + "ay"
#     else
#         pl_word = word[1..word.length-1] + word[0] + "ay"
#     end
# end
# puts "Ah, you mean '#{pl_word}'!"

# Much easier way using .include?:
# vowels = "aeiou"
# consonants = "bcdfghjklmnpqrstvwxyz"
# if vowels.include?(word[0])
#     #word[0] is a vowel
#     pl_word = word + "way"
# else
#     #word[0] is a consonant
#     if consonants.include? word[1]
#         #word[1] is a consonant
#         pl_word = word[2..word.length-1] + word[0..1] + "ay"
#     else
#         #word[1] is a vowel
#         pl_word = word[1..word.length-1] + word[0] + "ay"
#     end
# end
# puts "Ah, you mean '#{pl_word}'!"

# Create a Ruby program that finds how many prime numbers are between 1 and a number given by the user. Hint: look through the Ruby Docs on the Prime class, and note that sometimes you must import, or require, certain Ruby libraries.

# require 'prime'
# puts "Give me a number greater than 1:"
# num = gets.chomp.to_i
# count = 0
# # the long way, which starts to really lag at 10,000,000
# # x = 2
# # while x <= num
# #   if Prime.prime?(x)
# #       count += 1
# #   end
# #   x += 1
# # end

# the better way:
Prime.each(num) do |prime|
    count += 1
end

# puts "Fun fact: there are #{count} prime numbers between 1 and #{num}!"


# Write a Rock, Paper, Scissors game where a user can play against the computer.

# The user should enter rock, paper, or scissors (remember to account for differences in capitalization!), and the computer will choose a random value.
# After each turn display the score (user wins vs. computer wins).
# Whichever player reaches five wins first is the winner!

your_score = 0
comp_score = 0
until your_score == 5 || comp_score==5
  puts "Enter rock, paper, or scissors" 
  guess = gets.chomp.downcase
  computer = rand(1..3)
  case computer
  when 1
    comp_guess = "rock"
  when 2
    comp_guess = "paper"
  when 3
    comp_guess = "scissors"
  end
  puts "Your guess was #{guess}"
  puts "Comp guess was #{comp_guess}"
  if guess == "rock" && comp_guess == "rock"
    puts "draw"
  end
  if guess == "rock" && comp_guess == "paper"
    comp_score += 1
    puts "you lose"
  end
  if guess == "rock" && comp_guess == "scissors"
    your_score += 1
    puts "you win"
  end
  if guess == "paper" && comp_guess == "rock"
    your_score += 1
    puts "you win"
  end
  if guess == "paper" && comp_guess == "paper"
    puts "draw"
  end
  if guess == "paper" && comp_guess == "scissors"
    comp_score += 1
    puts "you lose"
  end
  if guess == "scissors" && comp_guess == "rock"
    your_score += 1
    puts "you win"
  end  
  if guess == "scissors" && comp_guess == "paper"
    your_score += 1
    puts "you win"
  end  
  if guess == "scissors" && comp_guess == "scissors"
    puts "draw"
  end  
end
if your_score == 5
  puts "You're the winner!"
elsif comp_score==5
  puts "You're the loser!"
end


# 7.  Fizzbuzz: Write a program that prints the numbers from 1 to 100. But for multiples of three (3) print "Fizz" instead of the number, and for the multiples of five (5) print "Buzz". For multiples of both three (3) and five (5), print "FizzBuzz".
 
 # numbers = (1..100)

 # numbers.each do |num|
 # 	if num%3 == 0 && num%5 ==0
 # 		puts "Fizzbuzz"
 # 	elsif num%3 == 0
 # 		puts "Fizz"
 # 	elsif num%5 == 0
 # 		puts "Buzz"
 # 	else puts num
 # 	end
 # end

#  puts "Let's play a game..."
# puts "Rock, Paper or Scissors?"
# choice = gets.chomp.downcase
# hands = %w(rock paper scissors)
# comp_choice = hands.sample
# # random = rand()
# # if (0..0.33).include?(random)
# #   comp_choice == "rock"
# # elsif (0.33..0.66).include?(random)
# #   comp_choice == "paper"
# # else
# #   comp_choice == "scissors"
# # end
# if choice == comp_choice
#     puts "It's a tie!"
# elsif choice == "rock" && comp_choice == "paper"
#     puts "Computer wins!"
# elsif choice == "rock" && comp_choice == "scissors"
#     puts "You win!"
# elsif choice == "paper" && comp_choice == "rock"
#     puts "You win!"
# elsif choice == "paper" && comp_choice == "scissors"
#     puts "Computer wins!"
# elsif choice == "scissors" && comp_choice == "paper"
#     puts "You win!"
# else
#     puts "Computer wins!"
# end			

# 8
# Create an array of test scores (anywhere from 0 to 100; sorry, no extra credit was given).

#     Now I want a couple things:

# Print out the scores in ascending order.
# Find the average of those test scores and print it out.

# scores = [22, 77, 99, 49, 79, 85]
# puts scores.sort
# puts scores.reduce(:+) / scores.size.to_f


# test_score = 1
# i = 0
# while test_score != ""
#   puts "Enter test score, 0 to 100, or 'Enter' when complete"
#   test_score = gets.chomp
#   if test_score != ""
#     scores[i] = test_score.to_i
#     i += 1
#   end
# end
# puts "Here are the scores:"
# puts scores.sort
# # puts scores.sum
# # puts i
# puts "The average is #{scores.sum / i}"

# scores = []
# # Autofill the test scores:
# # 10.times do
# #   scores.push(rand(0..100))
# # end
# puts "Professor, please enter the test scores. Type '-1' when finished..."
# # Let user fill in test scores:
# test_score = ""
# until test_score == -1
#     test_score = gets.chomp.to_i
#     if test_score != -1
#         scores.push(test_score)
#     end
# end
# puts "The test scores were:"
# puts scores.sort.join(", ")
# sum = 0
# scores.each do |score|
#     sum += score
# end
# puts "The average for this test was: #{sum/scores.length}"


# Create a program with a hash of countries & capitals - don't worry I'll give it to you:

#     Ask the user for the capital of each country, and tell them if they are Correct or Wrong. Also, keep score and give their score at the end of the quiz. Maybe have some smart-alecky comments about their score (see example below).

# cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}
# # we can't shuffle a Hash, but what we can do is
# # convert it to an Array, shuffle it, and then
# # convert it back to a Hash
# cos_n_caps = Hash[cos_n_caps.to_a.shuffle]
# score = 0
# cos_n_caps.each do |k,v|
#     puts "What is the capital of #{k}?"
#     answer = gets.chomp.downcase.capitalize
#     # having some conditionals for the two-word capitals
#     # and being somewhat lenient with what they've entered
#     if answer == "New delhi" || answer == "Delhi"
#         answer = "New Delhi"
#     elsif answer == "Washington, dc" || answer == "Washington"
#         answer = "Washington, DC"
#     end
#     if answer == v
#         puts "CORRECT!"
#         score += 1
#     else
#         puts "WRONG! It's #{v}, ya dummy."
#     end
# end
# puts "\n\nYour final score is: #{score}."
# if score > (cos_n_caps.length/2)
#     puts "You're a geo-wiz!"
# else
#     puts "And you wonder why you didn't get the job at the UN."
# end







