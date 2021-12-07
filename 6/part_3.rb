# frozen_string_literal: true

# 6.3

def intg(a_value, b_value, n_value, &block)
  k_value = 1
  res = (a_value..b_value).map(&block)
  # [a_value..b_value].each do
  #   res << yield(k_value)
  #   k_value += 1
  # end
  res.sum * (b_value - a_value) / n_value
end
