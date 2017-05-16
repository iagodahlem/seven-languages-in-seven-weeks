# Print the string “Hello, world.”
p 'Hello, world.'

# For the string “Hello, Ruby,” find the index of the word “Ruby.”
"Hello, Ruby,".index('Ruby')

# Print your name ten times.
10.times {p 'iago'}

# Print the string “This is sentence number 1,” where the number 1 changes from 1 to 10.
(1..10).each {|i| p "This is sentence number #{i}"}

# Run a Ruby program from a file.
# ruby day-1.rb

# Bonus problem: If you’re feeling the need for a little more, write a program that
# picks a random number. Let a player guess the number, telling the player whether
# the guess is too low or too high. (Hint: rand(10) will generate a random number
# from 0 to 9, and gets will read a string from the keyboard that you can translate to an integer.)
random = rand(10)
continue = 'Y'

while continue == 'Y' || continue == 'y' do
  p 'Tell me a number from 0 to 9:'
  guess = gets.chop.to_i
  p guess

  if guess > random
    p 'Too high.'
  elsif guess < random
    p 'Too low.'
  else
    p "You choose the correct answer! #{random}"
    break
  end

  p 'Keep trying? (Y/n)'
  continue = gets.chop
end
