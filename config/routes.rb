Rails.application.routes.draw do
	root 'users#index'
	get '/users', to: 'users#index', as: 'users'
	get '/users/new', to: 'users#new', as: 'new_user'
	get 'login', to: 'session#new', as: 'login'
	post '/users', to: 'users#create'
	get '/users/:id', to: 'users#show', as: 'user'

end

