def fibonacci(num)
  num1 = 0
  num2 = 1
  if num == 0
    num1
  elsif num == 1
    num2
  else
    (2...num + 1).each do |x|
      temp = num2
      num2 = num1 + num2
      num1 = temp
    end
    num2
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
