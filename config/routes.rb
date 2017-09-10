Rails.application.routes.draw do
  root 'welcome#index'

  resources :expenses, except: [:destroy]
  resources :months, except: [:destroy]
  resources :welcome, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
