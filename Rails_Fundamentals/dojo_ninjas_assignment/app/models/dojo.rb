class Dojo < ActiveRecord::Base
    validates :name, :city, :state, presence: true
    validates_length_of :state, is: 2

    has_many :ninjas, dependent: :destroy
end
