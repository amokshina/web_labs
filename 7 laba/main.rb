# frozen_string_literal: true

def input_f(file)
  File.open(file, 'w') do |f|
    loop do
      input = gets.chomp

      break if input == ''

      f.print input
    end
  end
end

def process_file(input_file, output_file)
  File.open(input_file, 'r') do |f|
    File.open(output_file, 'w') do |g|
      # res = ''

      str = f.read

      str.chars.each_with_index do |char, index|
        g.print str[index - 1] if char == 'a'
      end
    end
  end
end
