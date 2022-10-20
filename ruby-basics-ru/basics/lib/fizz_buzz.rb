# frozen_string_literal: true

# BEGIN
def fizz_buzz(num1, num2)
  result = ''
  idx = num1
  while idx <= num2
    if idx % 3 == 0 && idx % 5 == 0
      result << 'FizzBuzz '
    elsif idx % 5 == 0
      result << 'Buzz '
    elsif idx % 3 == 0
      result << 'Fizz '
    else 
      result << idx.to_s + ' '
    end
    idx += 1
  end
  result.chop!
end
# END
