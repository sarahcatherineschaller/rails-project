Rails.application.routes.draw do

	root 'users#index'
	
	resources :users do 
		resources :classrooms, only: [:index, :new, :create]
	end
	resources :classrooms, only: [:show, :edit, :update, :destroy]

	get '/login', to: 'session#new', as: 'login'
	post '/session', to: 'session#create', as: 'session'
	delete '/session', to: 'session#destroy'


end

