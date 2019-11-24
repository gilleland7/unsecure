Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/' => 'users#index'
post '/users' => 'users#create'
get '/dashboard' => 'mains#index'
post '/profiles' => 'profiles#create'
get 'search', to: "users#search"
end
