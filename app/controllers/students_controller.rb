class StudentsController < ApplicationController
	def index 
		@students = Student.all
		@student = Student.find_by(id:params[:id])
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
		@student = Student.find_by(id:params[:id])
	end 

	def update 
		@student = Student.find_by(id:params[:id])
		@student.update(student_params)
		redirect_to student_path
	end

	def destroy 
		@user = current_user
		@student = Student.find_by(id:params[:id])
		@student.destroy
		redirect_to user_path
	end

	private
	def student_params 
		params.require(:student).permit(:first_name, :last_name, :grade, classroom_ids:[])
	end 

end