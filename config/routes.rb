Rails.application.routes.draw do
  root       'home#index'
  resources :skills
  resources :skill_components
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about'       =>  'home#about'
  get 'contact'     =>  'home#contact'
end
