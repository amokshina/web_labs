# frozen_string_literal: true

def automorphic(n)
  res = []
  (n + 1).times do |i|
    kv_str = (i * i).to_s
    i_str = i.to_s
    res << i if kv_str.delete_suffix!(i_str)
  end
  res
end
