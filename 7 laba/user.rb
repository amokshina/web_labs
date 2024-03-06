# frozen_string_literal: true

require './main'

input_file = 'f.txt'

puts 'Введите символы в файл F'
input_f(input_file)
puts 'Ввод завершен'

output_file = 'h.txt'
process_file(input_file, output_file)
puts 'Файл H успешно создан.'
