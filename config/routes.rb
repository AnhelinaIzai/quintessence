Rails.application.routes.draw do
  get 'profile/user_is:integer'

  get 'profile/firstname:string'

  get 'profile/lastname:string'

  get 'profile/email:string'

  get 'profile/country:string'

  get 'profiles/new'

  resources :courses
  ActiveAdmin.routes(self)
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
