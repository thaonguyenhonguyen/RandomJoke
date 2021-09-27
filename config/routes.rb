Rails.application.routes.draw do
  resources :jokes
  resources :likes
  resources :dislikes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "jokes#index"
end
