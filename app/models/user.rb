class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :title, inclusion: { in: %w(Mr. Ms. Mrs.), message: "(Please use Mr., Ms., or Mrs.)"}
	validates :title, :first_name, :last_name, :email, :password, presence: true
	validates :email, uniqueness: true

	before_validation :make_title_case

	has_secure_password
	has_many :classrooms
	has_many :students, through: :classrooms


	def make_title_case 
		self.title = self.title.titlecase 
		self.first_name = self.first_name.titlecase 
		self.last_name = self.last_name.titlecase 
	end
end
