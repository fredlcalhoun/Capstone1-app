Rails.application.routes.draw do
  get "/" => "pets#index"

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

  get "/images" => "images#index"
  get "/images/new" => "images#new"
  post "/images" => "images#create"
  get "/images/:id" => "images#show"
  get "/images/:id" => "images#edit"
  patch "/images/:id" => "images#update"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
