Rails.application.routes.draw do

	root 'users#index'
	
	resources :users do 
		resources :classrooms, only: [:index, :new, :create]
	end

	resources :classrooms, only: [:show, :edit, :update, :destroy] do 
		resources :students
	end

	get '/login', to: 'session#new'
	post '/login', to: 'session#create'
	delete '/logout', to: 'session#destroy'


end

