Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'competitors#index'

  get 'session_new', to: 'sessions#new'
  post 'session_create', to: 'sessions#login'
  get 'session_destroy', to: 'sessions#logout'

  resources :voters, except: :show do
    collection do
      post :vote
    end
    member do
      delete :unvote
    end
  end
  resources :competitors, except: :show do
    collection do
      get :results
    end
  end
end
