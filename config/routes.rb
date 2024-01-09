Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/articles" => "articles#index"
  get "/articles/:id" => "articles#show"
  post "/articles" => "articles#create"
  patch "/articles/:id" => "articles#update"
  delete "/articles/:id" => "articles#destroy"


  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

end
