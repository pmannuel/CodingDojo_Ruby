class Dojo < ApplicationRecord
  validates :branch, :street, :city, :state, presence: true
  validates_length_of :state, is: 2

  has_many :students, :dependent => :destroy
end
