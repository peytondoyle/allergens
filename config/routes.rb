Rails.application.routes.draw do
  get '/', to: "application#home", as: :home
  resources :allergies
  resources :ingredients
  resources :rec_ings
  resources :recipes
  resources :users
end
