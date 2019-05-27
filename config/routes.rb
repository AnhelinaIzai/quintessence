Rails.application.routes.draw do

  get 'tests/index'

  post 'tests/start'

  get 'tests/test_question'

  post 'tests/test_question'

  post 'tests/answer'

  get 'tests/end'

  post "choices/create"

  post "choices/destroy"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
  	registrations: 'registrations'
  }

  resources :profiles

  resources :courses do
    resources :test_questions, shallow: true
    resources :bookmarks, only: [:create, :destroy], shallow: true
    resources :lessons, shallow: true do
      resources :questions, only: [:index, :create, :destroy],  shallow: true
    end
  end


  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
