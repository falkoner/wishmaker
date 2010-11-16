class Wish < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :idea, :user_id

	
end
