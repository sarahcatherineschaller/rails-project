class SessionsController < ApplicationController
	def new 
		@user = User.new 
	end

	def create 
		# @user = User.find_by(uid: auth['uid']) do |u|
		# 	u.title = auth['info']['title']
		# 	u.first_name = auth['info']['first_name']
		# 	u.last_name = auth['info']['last_name']
		# 	u.email = auth['info']['email']
		# end 
		# session[:user_id] = @user.id 
		# redirect_to user_path(@user)
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to user
		else 
			render 'new'
		end
	end

	def auth 
		request.env['omniauth.auth']
	end

	def destroy
		session.delete("user_id")
		redirect_to root_path
	end
end