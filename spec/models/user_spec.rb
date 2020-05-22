require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user1 = User.new(name: 'User01')
  end

  it 'can create a new user' do    
    @user1.save
    expect(@user1.valid?).to eq(true)
  end

  it "doesn't create user with an empty name" do
    @user2 = User.create(name: '')
    expect(@user2.valid?).to eq false
  end

  it 'creates a user with only a length of min:4 and max:30' do
    @user2 = User.create(name: '')
    expect(@user2.errors.full_messages[1]).to include 'short'
    @user2 = User.create(name: '012345678901234567890123456789N')
    expect(@user2.errors.full_messages[0]).to include 'long'
  end

  it 'creates a user only if the name is unique' do
    @user1.save
    @user2 = User.create(name: "#{@user1.name}")
    expect(@user2.valid?).to eq false
  end

  it 'creates a user with a name with capitals' do
    expect(@user1.name[0] == @user1.name[0].upcase).to eq true
  end

  it 'creates a user with a default avatar' do
    @user1.save
    expect(@user1.icon.empty?).to eq false
  end

  after(:all) { User.destroy_all }
end
