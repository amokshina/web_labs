# frozen_string_literal: true

def integral(foo, a, b, n)
  s = 0
  h = Float(b - a) / n
  x_values = (1..n).map { |i| a + h * i }
  y_values = x_values.map(&foo)
  y_values.each { |y| s += y }
  h * s
end

def integral2(a, b, n, &block)
  s = 0
  h = Float(b - a) / n
  x_values = (1..n).map { |i| a + h * i }
  y_values = x_values.map(&block)
  y_values.each { |y| s += y }
  (h * s).abs
end
