# frozen_string_literal: true

def integral(foo, a, b, n)
  s = (foo.call(a) + foo.call(b)) / 2.0
  h = Float(b - a) / n
  for i in 1...n do
    s += foo.call(a + h * i)
  end
  h * s
end
