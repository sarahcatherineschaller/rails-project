class Student < ApplicationRecord
	has_many :student_classrooms
	has_many :classrooms, through: :student_classrooms
	has_many :users, through: :classrooms

	def full_name
		"#{first_name} #{last_name}"
	end

	def last_name_first_name
		"#{last_name}, #{first_name}"
	end

end
