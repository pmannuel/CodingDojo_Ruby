class Message < ActiveRecord::Base
  validates :author, :message, presence: true
  validates_length_of :message, minimum: 15

  belongs_to :post
  belongs_to :user

  has_many :comments, as: :commentable
end
