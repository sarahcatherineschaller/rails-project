class ClassroomsController < ApplicationController
	def index 

	end 

	def show 
		@classroom = Classroom
	end 

	def new 
		@classroom = Classroom.new
	end

	def create 
		classroom = Classroom.create(classroom_params)
		redirect_to user_path(user.classrooms)
	end

	private 
	def classroom_params 
		params.require(:classroom).permit(:subject, :user_id)
	end
end