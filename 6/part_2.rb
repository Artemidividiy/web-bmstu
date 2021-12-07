# frozen_string_literal: true

# this is the solution to 6.2
class Solution
  def get_result(precision, d_value)
    result = Enumerator.new do |res|
      k_value = 1
      while k_value != d_value
        res << Math.log(1 + k_value * precision / 2) * precision / 2
        k_value += 1
      end
    end
    result.sum
  end

  def calculate(precision)
    precision = precision.to_f
    d_value = 2 / precision
    get_result(precision, d_value)  
  end
end
