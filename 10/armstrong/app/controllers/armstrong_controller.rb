def armstrong?(x_value)
    x_str = x_value.to_s
    x_value == x_str.chars.sum { |digit| digit.to_i**x_str.size }
  end
