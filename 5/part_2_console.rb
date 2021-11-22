# frozen_string_literal: true

require './part_2'

puts 'Введите строку'
s = gets
sol = Solution.new
puts 'Введите ключ'
key = gets
puts sol.decrypt(s, key.to_i)
