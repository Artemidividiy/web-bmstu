require 'rails_helper'

describe ArmstrongController, type: :controller do
  render_views
  def get_response(number)
    get :output, params: { number: number }
    response.body
  end

  def armstrong?(x_value)
    x_str = x_value.to_s
    x_value == x_str.chars.sum { |digit| digit.to_i**x_str.size }
  end

  def list_of_numbers(n_value)
    (10**(n_value - 1)...10**n_value).filter { |x_value| armstrong?(x_value) }
  end

  it 'should return correct output' do
    expect(get_response(3)).to include(list_of_numbers(3).sample.to_s)
  end
  it 'should return different output' do
      expect(get_response(3)).not_to eq(get_response(4))
  end
end