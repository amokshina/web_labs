# frozen_string_literal: true

require './main2'

puts 'Введите целое число'

input_i = gets.chomp

i1 = Int.new(input_i)

puts "Число: #{i1.i}"

puts "Количество цифр в числе #{i1.number_of_digits}"

puts 'Введите вещественное число'

input_f = gets.chomp

f1 = Int_float.new(i1.i, input_f)

puts "Целое число: #{f1.i} Вещественное число: #{f1.f}"



puts "Количество цифр в целом числе #{f1.number_of_digits}"
