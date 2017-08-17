Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/new" => "users#new"
  
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/pets" => "pets#index"
  get "/pets/new" => "pets#new"
  post "/pets" => "pets#create"
  get "/pets/:id" => "pets#show"
  get "/pets/:id/edit" => "pets#edit"
  patch "/pets/:id" => "pets#update"
  delete "/pets/:id" => "pets#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
