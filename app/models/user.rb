class User < ApplicationRecord
	validates :title, inclusion: { in: %w(Mr. Ms. Mrs.), message: "(Please use Mr., Ms., or Mrs.)"}
	validates :title, :first_name, :last_name, :email, :password, presence: true
	validates :email, uniqueness: true


	has_secure_password
	has_many :classrooms
	has_many :students, through: :classrooms
end
