require_relative './lib/challenge'

if ARGV.length >= 1
  input_array = ARGV[0].split(',').map(&:to_i)
  nth = ARGV[1] ? ARGV[1].to_i : 1

  nth = 1 if nth < 0

  result = Challenge.find_missing_number(input_array, nth: nth)
  puts "The #{nth} missing number is: #{result}"
else
  puts "Please provide an input array, e.g., '4,3,6,2,1,7'"
end