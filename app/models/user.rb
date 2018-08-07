class User < ApplicationRecord
	validates :title, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true


	has_secure_password
	has_many :classrooms
	has_many :students, through: :classrooms
end
