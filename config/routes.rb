Rails.application.routes.draw do

	root 'users#index'
	
	resources :users do 
		resources :classrooms, only: [:index, :new, :create, :show]
	end

	resources :classrooms, only: [:edit, :update, :destroy]
	
	resources :students
	

	get '/login', to: 'session#new'
	post '/login', to: 'session#create'
	delete '/logout', to: 'session#destroy'


end

