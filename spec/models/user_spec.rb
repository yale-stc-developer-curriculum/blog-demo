require 'spec_helper'

describe User do
  it { should have_many(:comments) }
  it { should have_and_belong_to_many(:posts) }

  describe '.full_name' do
    it 'should return the first and last name together' do
      @user = FactoryGirl.create(:user, first_name: 'Adam', last_name: 'Bray')
      @user.full_name.should eq('Adam Bray')
    end
  end
end
