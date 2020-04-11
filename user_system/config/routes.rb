Rails.application.routes.draw do

  resources :tenants, only: [:create, :destroy]
  resources :users do
    collection do
      post :forgot_password
      get :confirmation
      put :set_password
    end
  end

  resources :sessions do
    resources :reviews
    post :ratings
    get :ratings, action: 'list_ratings'
    put "ratings/:id", to: "sessions#update_ratings"
    post :update_profile
    put :change_password
    resources :subscription do
      resources :plans
    end
  end

end
