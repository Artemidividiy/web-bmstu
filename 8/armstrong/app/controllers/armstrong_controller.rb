# frozen_string_literal: true

# armstrong numbers controller
class ArmstrongController < ApplicationController
  def input; end

  def armstrong?(x_value)
    x_str = x_value.to_s
    x_value == x_str.chars.sum { |digit| digit.to_i**x_str.size }
  end

  def malformed
      respond_to do |format|
        format.html {render html: 'Malformed request!', status: 500 }
      end
  end

  def output
    n_value = params['number'].to_i
    if n_value <= 0 || n_value >= 8
      malformed
    else
      @results = (10**(n_value - 1)...10**n_value).filter { |x_value| armstrong?(x_value) }
    end
  end
end
