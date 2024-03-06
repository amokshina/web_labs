# frozen_string_literal: true

require './main2'

real_res = Math.sqrt(3) - Math::PI / 12 - 1
foo = ->(x) { Math.tan(x)**2 }

for i in [20, 30, 40] do

  res = integral(foo, Math::PI / 4, Math::PI / 3, i).round(6)
  puts("n = #{i}: #{res} ")
  puts("погрешность = #{(real_res - res).round(6)}")

end
