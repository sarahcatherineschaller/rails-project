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
		
	end
end