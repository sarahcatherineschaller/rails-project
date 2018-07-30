Rails.application.routes.draw do
	root 'users#index'
	get '/users', to: 'users#index', as: 'users'
	get '/users/new', to: 'users#new', as: 'new_user'
	post '/users', to: 'users#create'
	get '/users/:id', to: 'users#show', as: 'user'

	get '/login', to: 'session#new', as: 'login'
	post '/session', to: 'session#create', as: 'session'
	delete '/session', to: 'session#destroy'

	get '/classrooms/new', to: 'classrooms#new', as: 'new_classroom'
	post '/classrooms', to: 'classrooms#create'
	get '/classrooms/:id', to: 'classrooms#show', as: 'classroom'
	get '/classrooms', to: 'classrooms#index', as: 'classrooms'
	

end

