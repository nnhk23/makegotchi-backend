Rails.application.routes.draw do
  resources :user_pets
  resources :pets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: "users#login"
  get "/getuser", to: "users#get_user"

  resources :users do
    resources :user_pets
  end

end
