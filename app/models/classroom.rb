class Classroom < ApplicationRecord
	validates :subject, presence: true, uniqueness: true


	has_many :student_classrooms
	has_many :students, through: :student_classrooms
	belongs_to :user
end
