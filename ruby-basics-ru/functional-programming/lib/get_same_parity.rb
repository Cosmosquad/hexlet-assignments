# frozen_string_literal: true

# BEGIN
def get_same_parity(array)
  return [] if array.empty?

  is_even_first_number = array.first.even?
  array.select { |number| number.even? == is_even_first_number }
end

# END
