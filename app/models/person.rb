class Person < ActiveRecord::Base
	attr_accessible :name, :address

	validates :name, presence=>true
end
