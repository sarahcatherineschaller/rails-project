class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :authenticate_user!
	helper_method :current_user

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected 

	def configure_permitted_parameters 
		added_attrs = [:title, :first_name, :last_name]
		devise_parameter_sanitizer.permit :sign_up, keys: added_attrs 
		devise_parameter_sanitizer.permit :account_upddate, keys: added_attrs 
	end 

	private
	def current_user 
		@current_user ||= User.find_by(id:session[:user_id])
	end

end
