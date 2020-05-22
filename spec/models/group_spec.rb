require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:all) do
    @user = User.create(name: 'User')
  end

  context 'with one created user' do
    before(:each) do
      @group1 = Group.new(name: 'Group01', user_id: @user.id)
    end

    it 'creates a new group' do    
      @group1.save
      expect(@group1.valid?).to eq(true)
    end

    it "doesn't create a group with an empty name" do
      @group2 = Group.create(name: '')
      expect(@group2.valid?).to eq false
    end

    it 'creates a group with only a length of min:4 and max:30' do
      @group2 = Group.create(name: '')
      expect(@group2.errors.full_messages[1]).to include 'short'
      @group2 = Group.create(name: '012345678901234567890123456789N')
      expect(@group2.errors.full_messages[0]).to include 'long'
    end

    it 'creates a group only if the name is unique' do
      @group1.save
      @group2 = Group.create(name: "#{@group1.name}")
      expect(@group2.valid?).to eq false
    end

    it 'creates a group not needing an icon' do
      @group1.save
      expect(@group1.icon.nil? & @group1.valid?).to eq true
    end
  end

  after(:all) { Group.destroy_all }
end
