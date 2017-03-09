class Blog < ActiveRecord::Base
  validates :name, :description, presence: true

  has_many :posts, :dependent => :destroy
  has_many :owners

  # all the users that own a specifc blog
  has_many :users, through: :owners

  # all the users that posted on a specific blog
  has_many :user_posts, through: :posts, source: :user

  has_many :comments, as: :commentable
end
