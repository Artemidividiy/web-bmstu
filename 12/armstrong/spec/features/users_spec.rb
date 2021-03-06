require 'rails_helper'

describe 'User system' do
  it 'allows to register a user, log in and calculate', js: true do
    visit root_path
    click_on 'Sign up'
    fill_in 'Username', with: 'test_user'
    fill_in 'Email', with: 'test@example.org'
    fill_in 'Password', with: 'password'
    fill_in 'Confirm password', with: 'password'
    click_on 'Submit'
    expect(User.find_by(username: 'test_user')).not_to be_nil
    expect(page.body).to include 'Logged in as test_user'
    fill_in 'number', with: 4
    click_on 'calculate'
    expect(page.body).to include 'Lucky Numbers from'
  end

  it 'doesn\'t allow to calculate unless logged in', js: true do
    visit armstrong_output_path(number: 3)
    expect(page.body).not_to include 'table'
  end
end
