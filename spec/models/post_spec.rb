require 'spec_helper'

describe Post do
  it { should have_and_belong_to_many(:users) }
  it { should have_many(:comments) }

  describe '.user_tokens' do
    it 'should accept a string of user ids and assign them to a post as an array of user_ids' do
      @user = FactoryGirl.create(:user)
      @another_user = FactoryGirl.create(:user)
      @post = FactoryGirl.create(:post)
      @post.update_attribute(:user_tokens, '#{@user.id}, #{@another_user.id}')
      @post.user_ids.should eq([@user.id, @another_user.id])
    end
  end

end
