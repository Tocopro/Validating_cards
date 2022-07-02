
puts 'Credit Card Number Validation'
puts 'Enter the Credit or Debit card Number: '
number = '4956618550028752'

valid_number = []

number = number.reverse
puts number
sum = 0
number_split = number.split('')
num1 = 0
number_split.each_with_index do |val, index|
  puts " #{val} => #{index + 1}"
  if (index + 1) % 2 != 0
    valid_number << val.to_i
  elsif (index + 1) % 2 == 0
    num1 = val.to_i * 2
    if num1 > 9
      sum = 0
      num1 = num1.to_s
      char = num1.split('')
      char.each { |x|
        sum = sum + x.to_i
      }
      valid_number << sum.to_i
    elsif num1 <= 9
      valid_number << num1.to_i
    end
  end
end
total = 0
valid_number.each { |x|
  total = total + x
}
if total % 10 == 0
  puts "The Card Number is Valid"
else 
  puts "The Card Number is not Valid"
end
puts total
puts (valid_number.reverse).inspect
