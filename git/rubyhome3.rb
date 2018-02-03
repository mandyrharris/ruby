# Create a program that will take two numbers and then gives the user a choice of what kind of arithmetic they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. This time you really gotta use methods!


puts "Let's do some math! (whoop, whoop)"
puts "Give me a number"
num1 = gets.chomp.to_f
puts "Give me another number"
num2 = gets.chomp.to_f
puts "Now would you like to add, subtract, multiply, or divide your numbers"
choice = gets.chomp.downcase

def addition(num1, num2)
	num1 + num2
end

def subtraction(num1, num2)
	num1 - num2
end

def multiplication(num1, num2)
	num1 * num2
end

def division(num1, num2)
	num1 / num2
end

if choice == "add"
	puts "your answer is" + addition(num1, num2).to_s 
elsif choice == "subtract"
	puts "your answer is" + subtraction(num1, num2).to_s 
elsif choice == "multiply"
	puts "your answer is" + multiplication(num1, num2).to_s 
elsif choice == "divide"
	puts "your answer is" + division(num1, num2).to_s 
else 
	puts "Yo dude. I've never heard of that way to do math - please enter add, subtract, multiply, or divide"
end

******Another way**********
def add(num1,num2)
    puts "#{num1} + #{num2} = #{num1 + num2}"
end
def subtract(num1,num2)
    puts "#{num1} - #{num2} = #{num1 - num2}"
end
def multiply(num1,num2)
    puts "#{num1} * #{num2} = #{num1 * num2}"
end
def divide(num1,num2)
    puts "#{num1} / #{num2} = #{num1/num2}"
end
def menu(num1,num2)
    puts "Now what would you like done with #{num1} & #{num2}?"
    puts "------------------------"
    puts "1. Add"
    puts "2. Subtract"
    puts "3. Multiply"
    puts "4. Divide"
    puts "5. Exit Program"
    choice = gets.chomp.to_i
    case choice
        when 1
            add(num1,num2)
            menu(num1,num2)
        when 2
            # I don't like negative numbers, so...
            if num1 > num2
                subtract(num1, num2)
            else
                subtract(num2, num1)
            end
            menu(num1,num2)
        when 3
            multiply(num1,num2)
            menu(num1,num2)
        when 4
            # I'm also not a fan of fractions,
            # let's get the bigger number on top...
            if num1 > num2
                divide(num1, num2)
            else
                divide(num2, num1)
            end
            menu(num1,num2)
        when 5
            puts "Okay, whatevs. Later."
        else
            puts "Invalid response. Please choose a valid number selection."
            menu(num1, num2)
    end
end
puts "Let's do some math! First we need some numbers..."
print "Number One: "
num1 = gets.chomp.to_f
print "Number Two: "
num2 = gets.chomp.to_f
menu(num1,num2)


# # Build-a-Quiz
# # Build a quiz program that gets a few inputs from the user including:
# # number of questions
# # questions
# # answers
# # Then clear the screen and begin the quiz. Keep score!

==begin
    Build a quiz program that gets a few inputs from the user including:
        * title of quiz
        * number of questions
        * questions
        * answers
        
    Then let the user either build more quizzes, or take a quiz. When taking a quiz, keep score!
==end
puts "Quizbuilder!"
# we're allow for multiple quizes.
# they will be stored in a Hash
# because they will have a title (Key)
# and then the questions and answers,
# stored in another Hash (Value)
@quizzes = {}
# define a menu method to
# guide users through program
def menu
    puts "What would you like to do?"
    puts "1. Build a Quiz"
    puts "2. Take a Quiz"
    choice = gets.chomp.to_i
    case choice
        when 1
            system "clear"
            build_quiz
        when 2
            system "clear"
            choose_quiz
        else
            system "clear"
            puts "Try Again."
            menu
    end 
end
def build_quiz
    print "Title your quiz: "
    title = gets.chomp
    print "How many questions should be in your quiz? "
    num = gets.chomp.to_i
    questions_and_answers = {}
    num.times do 
        puts "Enter a question:"
        q = gets.chomp
        # making the answers 'yes' or 'no' is easiest
        puts "What is the answer? [Y or N]"
        a = gets.chomp.upcase
        questions_and_answers[q] = a
    end
    @quizzes[title] = questions_and_answers
    system "clear"
    puts "Quiz Built!"
    menu
end
# there can be multiple quizzes,
# so we need to print out the titles
# and let the user choose one.
def choose_quiz
    # what if there's no quizzes yet?!
    if @quizzes.length == 0
        puts "No quizzes have been made yet!"
        puts "Get to it!"
        build_quiz
    # okay, but maybe there is some...
    else
        puts "Choose a Quiz"
        puts "-------------"
        # hash.keys returns an array
        # filled with the keys of that hash
        @quizzes.keys.each_with_index do |title, index|
            puts "#{index+1}. #{title}"
        end
        # we did this because we want the user
        # to choose a number, and we can associate
        # that number with a title, to pass on
        # to the next method
        choice = gets.chomp.to_i
        system "clear"
        take_quiz(@quizzes.keys[choice-1])
    end
end
# finally time to take the quiz,
# we'll use the title to look
# up in the @quizzes hash which
# quiz we're actually taking
def take_quiz(title)
    # gonna keep score!
    score = 0
    puts title.upcase
    puts "--------"
    @quizzes[title].each do |question, answer|
        puts question
        user_ans = gets.chomp.upcase
        if user_ans == "Y" || user_ans == "N"
            if user_ans == answer
                score += 1
            end
        else
            # if they don't give the correct
            # type of answer (Y or N), make
            # them try again.
            puts "Try again: Y or N"
            redo
            # redo this iteration
        end
    end
    puts "You got a score of #{score} out of #{@quizzes[title].length}!"
end
menu


Add CommentCollapse 


Message part_time_jan-feb18