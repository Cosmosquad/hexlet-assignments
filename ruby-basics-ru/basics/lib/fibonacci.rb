# frozen_string_literal: true

# BEGIN
def fibonacci (n)
  if n >= 0
    return n if n <= 1 
    fibonacci(n - 1) + fibonacci(n - 2)
  else 
    n = nil
  end
end
# END
