Rails.application.routes.draw do
  get 'home/index'
  resources :comunicados
  resources :animals
  resources :proprietarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
