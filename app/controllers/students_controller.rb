class StudentsController < ApplicationController
	def index 
		@students = Classroom.find(params[:classroom_id]).students
	end 

	def new 
		@student = Student.new 
	end

	def create 
		student = Student.new(student_params)
		classroom = Classroom.find_by(id:params[:id])
		student.save 
		redirect_to student_path(student)
	end

	def show 
		@student = Student.find_by(id:params[:id])
	end 

	def edit 
	end 

	def destroy 
	end

	private
	def student_params 
		params.require(:student).permit(:first_name, :last_name, :grade, classroom_ids:[])
	end 

end