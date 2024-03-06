# frozen_string_literal: true

class Int
  def initialize(i)
    @i = i.to_i
  end

  attr_reader :i

  def number_of_digits
    i.to_s.length
  end
end

class Int_float < Int
  def initialize(i, f)
    super(i)
    @f = f.to_f
  end

  attr_reader :f
end
