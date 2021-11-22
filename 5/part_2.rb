# frozen_string_literal: true

# Класс для дешифровки строки
class Solution
  def initialize; end

  def decrypt(str, key)
    @t_str = ''
    str.each_char { |x| @t_str += x != ' ' ? (x.ord + key).chr : x }
    return @t_str
  end
end
