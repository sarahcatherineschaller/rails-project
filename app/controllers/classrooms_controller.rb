class ClassroomsController < ApplicationController
	def index 

	end 

	def show 
		@classroom = Classroom.find_by(id:params[:id])
	end 

	def new 
		@classroom = Classroom.new
	end

	def create 
		classroom = Classroom.create(classroom_params)
		redirect_to classroom_path(classroom)
	end

	private 
	def classroom_params 
		params.require(:classroom).permit(:subject)
	end
end