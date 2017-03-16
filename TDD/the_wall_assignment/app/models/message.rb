class Message < ApplicationRecord
  validates :message, presence: true, length: { minimum: 10 }
  validates :user, presence: true
  belongs_to :user
end
