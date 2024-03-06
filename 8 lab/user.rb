# frozen_string_literal: true

require './func'

puts('Input x')
x = gets.chomp.to_i

puts(automorphic(x))
