class Schedule < ApplicationRecord
	validates :room_number, :period, presence: true

	belongs_to :student 
	belongs_to :classroom 
end
