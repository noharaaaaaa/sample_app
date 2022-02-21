Rails.application.routes.draw do
  get '/top' => 'homes#top'
  resources :lists
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
