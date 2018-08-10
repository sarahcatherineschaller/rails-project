class StudentClassroomsController < ApplicationController
	def new 
		@student_classroom = StudentClassroom.new
	end 

	def create 
		@student_classroom = StudentClassroom.create(student_classroom_params)
		redirect_to student_classroom_path(@student_classroom) 
	end 

	def show
		@student_classroom = StudentClassroom.find_by(id:params[:id])
	end 

	private 
	def student_classroom_params 
		params.require(:student_classroom).permit(:classtime, classroom_ids:[])
	end
end