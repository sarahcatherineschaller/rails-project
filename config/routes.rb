Rails.application.routes.draw do

	root 'users#index'
	
	resources :users do 
		resources :classrooms
	end
	
	resources :students
	

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'


end

