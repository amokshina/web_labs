# frozen_string_literal: true

require './main3'



foo1 = ->(x) { (Math::E**x) / (x + 1) }

foo2 = ->(x) { x * (x - 1) }



[20, 30, 40].each do |n|
  res = integral(foo1, 0, 1, n).round(6)

  res2 = integral2(0, 1, n, &foo2).round(6)

  puts("n = #{n}   foo1:#{res} foo2:#{res2} ")
end
