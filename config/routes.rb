Rails.application.routes.draw do

	root 'users#index'
	
	resources :users do 
		resources :classrooms
	end
	
	resources :students

	resources :student_classrooms

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

	get '/auth/facebook/callback', to: 'sessions#create'

end

