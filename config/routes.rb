Rails.application.routes.draw do
  resources :skills
  root       'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about'       =>  'home#about'
  get 'contact'     =>  'home#contact'
end
