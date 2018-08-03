class StudentsController < ApplicationController
	def index 
	end 

	def new 
	end

	def create 
	end

	def show 
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