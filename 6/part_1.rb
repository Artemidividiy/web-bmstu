# frozen_string_literal: true

def looop(precision, d_value)
  res = 0
  (1...d_value).each do |iter|
    res += Math.log(1.0 + iter * precision / 2) * precision / 2
  end
  res
end

def calculate(precision)
  precision = precision.to_f
  d_value = 2 / precision
  looop(precision, d_value)
end
