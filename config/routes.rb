Rails.application.routes.draw do

	root 'users#index'
	
	resources :users do 
		resources :classrooms
	end
	
	resources :students
	

	get '/login', to: 'session#new'
	post '/login', to: 'session#create'
	delete '/logout', to: 'session#destroy'


end

