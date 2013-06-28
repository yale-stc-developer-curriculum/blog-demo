class Post < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :comments

  attr_reader :user_tokens

  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end

end
