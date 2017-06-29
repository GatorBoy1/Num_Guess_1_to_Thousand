#greet the player and ask name


puts "Welcome! what say, we play a guessing game!"

#get players's name
puts "What's your name?"
input = gets
name = input.chomp
puts "Welcome, #{name}!"

#Store a random number for player to guess
puts "I've got a number between 1 and 1000, which you must guess!"
target = rand(1000) + 1

#Track the number of guesses the player has made
num_guesses = 0

#Track if player has guessed correctly
guessed_it = false

while num_guesses < 10 && guessed_it == false

    puts "You have #{10 - num_guesses} guesses"
    p "Enter your number:"
     guess = gets.to_i
    
    num_guesses +=1

#Compare guess to the target
#Print appropriate message
        if guess < target
            puts "Too low."
        elsif guess > target 
            puts "Too high."
        elsif guess == target
            puts "#{name}!, You did Great! In just #{num_guesses} guessed the right number... #{target}"
            guessed_it = true

        end
    end
    

#If player run out of turns, tell them what the number was
if not guessed_it
    puts "Sorry; you did not guess it. (The number was #{target}.)"
end











