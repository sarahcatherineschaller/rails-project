class Classroom < ApplicationRecord
	validates :subject, presence: true, uniqueness: true

	before_validation :make_title_case


	has_many :schedules
	has_many :students, through: :schedules
	belongs_to :user

	private 
	def make_title_case 
		self.subject = self.subject.titlecase 
	end
end
