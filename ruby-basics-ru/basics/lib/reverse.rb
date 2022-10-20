# frozen_string_literal: true

# BEGIN
def reverse(input)
  b = []
  input.split('').map { |elm| b.unshift(elm) }
  return b.join()
end
# END
