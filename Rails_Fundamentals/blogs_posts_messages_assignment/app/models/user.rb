class User < ActiveRecord::Base
  has_many :owners
  has_many :messages
  has_many :posts

  # all the blogs owned by a specific user
  has_many :blogs, through: :owners

  # all the blogs a user has posted on
  has_many :blog_posted_on, through: :posts, source: :blog

  has_many :comments, as: :commentable
end
