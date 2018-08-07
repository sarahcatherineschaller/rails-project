class User < ApplicationRecord
	validates :title, inclusion: { in: %w(Mr. Ms. Mrs.), message: "(Please use Mr., Ms., or Mrs.)"}
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true


	has_secure_password
	has_many :classrooms
	has_many :students, through: :classrooms
end
