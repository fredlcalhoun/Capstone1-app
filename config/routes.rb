Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/new" => "users#new"
  
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
