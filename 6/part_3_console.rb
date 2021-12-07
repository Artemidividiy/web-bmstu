# frozen_string_literal: true

require './part_3'

puts(intg(0.1, 1, 1e-9) { |x| (Math.sin x) / x })
func = ->(x) { Math.tan(x + 1) / (x + 1) }
puts(intg(1, 2, 1e-9, &func))
