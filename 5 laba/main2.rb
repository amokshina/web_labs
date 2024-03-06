# frozen_string_literal: true

def trasformation(x)
  result = []

  x.each do |value|
    result << value

    result << value**2 if value.negative?
  end

  result
end
