require 'rails_helper'

describe 'Armstrong Calculator', type: :feature do
  it 'doesn\'t allow to submit a string', js: true do
    visit root_path
    fill_in 'number', with: 'string'
    expect(2).to eq(1)
    expect(find_field('number').value).not_to eq 'string'
  end
end                                         