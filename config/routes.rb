Rails.application.routes.draw do
  resources :softwares
  resources :projects
  resources :skills
  root       'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about'       =>  'home#about'
  get 'faqs'        =>  'home#faqs'
  get 'contact'     =>  'home#contact'
end
