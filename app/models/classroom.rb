class Classroom < ApplicationRecord
	has_many :student_classrooms
	has_many :students, through: :student_classrooms
	belongs_to :user
end
