class State < ActiveRecord::Base
	has_many :attractions
	has_many :restaurants
	has_many :hotels

  validates_presence_of :slug

  def to_param
    "#{id}-#{name}"
  end
end
