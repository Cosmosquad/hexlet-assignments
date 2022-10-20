# frozen_string_literal: true

# BEGIN
def fizz_buzz(num1, num2)
  result = ''
  if num1 > num2 
    result = nil
  end
  idx = num1
  while idx <= num2
    if idx % 3 == 0 && idx % 5 == 0
      result << 'FizzBuzz '
    elsif idx % 5 == 0
      result << 'Buzz '
    elsif idx % 3 == 0
      result << 'Fizz '
    else
      i = idx.to_s     
      result << i + ' '
    end
    idx += 1
  end
  result       
end
# END
