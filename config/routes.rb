Rails.application.routes.draw do
  
  resources :steps
  resources :ingredients
  resources :recipes
  devise_for :users
  namespace :api do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '*path', to: "application#fallback_index_html", constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
