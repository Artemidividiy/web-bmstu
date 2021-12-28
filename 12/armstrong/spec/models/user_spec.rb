require 'rails_helper'

describe User, type: :model do
  before(:each) { Result.delete_all }
  it 'should add new records' do 
      expect {Result.create(number: 3, value: "doesn't matter") }
        .to(change { Result.count })
    end

  it 'can\'t have two identical records' do 
    User.create(username: "test", email: "doesn't matter", password: "test")
    expect(User.new(username: "test", email: "doesn't matter", password: "test")).not_to be_valid
  end
end