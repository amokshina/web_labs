# frozen_string_literal: true

def integral(foo, a, b, n)
  s = (foo.call(a) + foo.call(b)) / 2.0
  h = Float(b - a) / n
  x_values = (1...n).map { |i| a + h * i }
  y_values = x_values.map(&foo)
  y_values.each { |y| s += y }
  h * s
end

def integral2(foo, a, b, n)
  s = (foo.call(a) + foo.call(b)) / 2.0
  h = Float(b - a) / n
  x_values = (1...n).each do |i|
  end
  y_values = x_values.each(&foo)
  y_values.each { |y| s += y }
  h * s
end
