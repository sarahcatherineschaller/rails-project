class ClassroomsController < ApplicationController
	def index 
		@classrooms = User.find(params[:user_id]).classrooms 
	end 
	

	def new 
		@classroom = Classroom.new
		@user = current_user
	end

	def create 
		classroom = Classroom.new(classroom_params)
		@user = current_user
		classroom.user_id = @user.id
		classroom.save
		redirect_to user_classroom_path(@user.id, classroom.id)
	end


	def show 
		@classroom = Classroom.find_by(id:params[:id])

	end 

	private 
	def classroom_params 
		params.require(:classroom).permit(:subject, :user_id)
	end
end