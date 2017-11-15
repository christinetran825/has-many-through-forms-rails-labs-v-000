class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  def user_attributes=(user_attribute)
    if user_attribute[:username] != ""
      self.create_user(user_attribute)
    end
  end

  def post_title
    self.post.title
  end

  def user_name
    self.user.username
  end

end
