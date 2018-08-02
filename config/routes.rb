Rails.application.routes.draw do

	root 'users#index'
	
	resources :users do 
		resources :classrooms 
	end

	get '/login', to: 'session#new', as: 'login'
	post '/session', to: 'session#create', as: 'session'
	delete '/session', to: 'session#destroy'


end

