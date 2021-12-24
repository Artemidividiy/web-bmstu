require 'rails_helper'

def armstrong?(x_value)
  x_str = x_value.to_s
  x_value == x_str.chars.sum { |digit| digit.to_i**x_str.size }
end

def armstrong_nums(iter_val)
   if (10**(iter_val - 1)...10**iter_val).filter { |x_value| armstrong?(x_value) }
  else
    (10**(iter_val - 1)...10**iter_val).filter { |x_value| armstrong?(x_value) }.concat armstrong_nums(iter_val( - 1))
  end
end
  click_button 'commit'
  find(:id, 'results').text
end

describe 'Armstrong Calculator', type: :feature do
  it 'doesn\'t allow to submit a string', js: true do
    visit root_path
    fill_in 'number', with: 'number'
    # expect(2).to eq(1)
    expect(find_field('number').value).not_to eq 'string'
  end

  end
end
