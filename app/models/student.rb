class Student < ApplicationRecord
	validates :first_name, :last_name, :grade, presence: true 

	before_validation :make_title_case

	has_many :student_classrooms
	has_many :classrooms, through: :student_classrooms
	has_many :users, through: :classrooms

	def full_name
		"#{first_name} #{last_name}"
	end

	def last_name_first_name
		"#{last_name}, #{first_name}"
	end

	private 

	def make_title_case 
		self.first_name = self.first_name.titlecase 
		self.last_name = self.last_name.titlecase 
	end


end
