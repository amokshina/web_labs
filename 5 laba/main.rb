# frozen_string_literal: true

def foo(x)
  x = x.to_i
  if x.positive? && x**3 != 5
    Math.log(x) + Math.sin(x / (x**3 - 5))**2
  else
    'bad data'
  end
end
