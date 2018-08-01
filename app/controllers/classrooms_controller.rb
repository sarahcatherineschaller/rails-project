class ClassroomsController < ApplicationController
	def index 
		@classrooms = User.find(params[:user_id]).classrooms 
	end 
		
	end 

	def new 
		@classroom = Classroom.new
	end

	def create 
		classroom = Classroom.create(classroom_params)
		redirect_to users_classroom_path(classroom)
	end

	def show 
		@classroom = Classroom.find(params[:id])
	end 

	private 
	def classroom_params 
		params.require(:classroom).permit(:subject, :user_id)
	end
end