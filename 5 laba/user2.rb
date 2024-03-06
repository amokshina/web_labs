# frozen_string_literal: true

require './main2'

puts('Input elements of Array. 0 - the end of input.')

a = []

x = gets.chomp.to_i
while x != 0
  a << x
  x = gets.chomp.to_i
end

print('Before trasformation: ')
p a

print('After trasformation: ')
p trasformation(a)
