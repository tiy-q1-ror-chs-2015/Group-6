class State < ActiveRecord::Base
	has_many :attractions
	has_many :restaurants
	has_many :hotels
end
