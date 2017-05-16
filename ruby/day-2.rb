# Find out how to access files with and without code blocks. What is the benefit of the code block?
file = File.open('day-2-with-out-code-blocks.txt', 'w')
file.write 'writing in a file without code blocks'
file.close

File.open('day-2-with-code-block.txt', 'w') {|file| file.write('writing in a file with code blocks')}

# How would you translate a hash to an array? Can you translate arrays to hashes?
my_hash = {name: 'hash', age: 12}

a = my_hash.to_a
p a

b = a.to_h
p b

# Can you iterate through a hash?
my_hash.each do |key, value|
  puts "#{key}: #{value}"
end

# Print the contents of an array of sixteen numbers, four numbers
# at a time, using just each. Now, do the same with each_slice in Enumerable.
arr = (1..16).to_a
arr.each_slice(4) {|i| p i}

# The Tree class was interesting, but it did not allow you to specify
# a new tree with a clean user interface. Let the initializer accept a
# nested structure with hashes and arrays. You should be able to
# specify a tree like this: {’grandpa’ => { ’dad’ => {’child 1’ => {}, ’child
# 2’ => {} }, ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }.

# Write a simple grep that will print the lines of a file having any
# occurrences of a phrase anywhere in that line. You will need to do
# a simple regular expression match and read lines from a file. (This
# is surprisingly simple in Ruby.) If you want, include line numbers.
def grep file, regex
  file = File.open(file, 'r')
  while line = file.gets
    puts line if regex.match(line)
  end
  file.close
end

File.open('grep.txt', 'w') {|file| file.write('hello')}

grep('grep.txt', /hello/)
