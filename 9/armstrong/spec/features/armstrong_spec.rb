require 'rails_helper'

def submit_form(number)
  visit root_path
  fill_in 'number', with: number
  click_button 'commit'
  puts find(:id, 'results').text
  find(:id, 'results').text
end

def armstrong?(x_value)
  x_str = x_value.to_s
  x_value == x_str.chars.sum { |digit| digit.to_i**x_str.size }
end

def list_of_numbers(n_value)
  (10**(n_value - 1)...10**n_value).filter { |x_value| armstrong?(x_value) }
  # hash_list = {}
  # index = 1
  #   number_list.each { |value|
  #   hash_list[index] = value
  #   index += 1
  # }
  # hash_list
end

describe 'Armstrong Calculator', type: :feature do
  it 'doesn\'t allow to submit a string', js: true do
    # expect(2).to eq(1)
    visit root_path
    fill_in 'number', with: 'number'
    expect(find_field('number').value).not_to eq 'string'
    expect(find_field('number').value).not_to eq 'a string'
  end

  it 'does output', js: true do
    
    expect Array(submit_form(3)).each_slice(2).map(&:last).to match Array(list_of_numbers)
  end
end
