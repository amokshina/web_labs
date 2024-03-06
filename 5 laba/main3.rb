# frozen_string_literal: true

def contains_only_alphanumeric?(str)
  /^[a-zA-Z0-9]+$/.match?(str)
end

def starts_with_numeric!(str)
  str[0] = '_' if str.match?(/^\d/)
  str
end

def word_transform!(str)
  if contains_only_alphanumeric?(str)
    starts_with_numeric!(str)
  else
    str = ''
  end
  str
end

def trasformation!(x)
  x.each do |string|
    split_result = string.split(' ')
    split_result.map! do |word| # использование map! для сохранения изменений в split_result
      word_transform!(word)
    end
    string.replace(split_result.join(' '))
  end
  # x.delete_if {|x| x=""}
end
