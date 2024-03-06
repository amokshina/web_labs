# frozen_string_literal: true

require './main3'

puts('Input strings. /n - the end of input.')

a = []

x = gets.chomp
while x != ''
  a << x
  x = gets.chomp
end

print('Before trasformation: ')
p a

print('After trasformation: ')
p trasformation!(a)
