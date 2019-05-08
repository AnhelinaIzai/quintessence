Rails.application.routes.draw do
  

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  as :user do
    put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
  
     devise_for :users, controllers: {
  	registrations: 'registrations',
  	confirmations: 'confirmations'
  }
 resources :profiles
 
 resources :courses do
  resources :lessons, shallow:true
	end
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
