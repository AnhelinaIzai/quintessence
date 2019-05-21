Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
  	registrations: 'registrations'
  }

  resources :profiles

  resources :courses do
    resources :lessons, shallow:true do
      resources :questions, only: [:index, :create, :destroy],  shallow: true
    end
  end


  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
