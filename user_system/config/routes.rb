Rails.application.routes.draw do

  resources :users do
    collection do
      post :forgot_password
      get :confirmation
      put :set_password
    end
  end

  resources :sessions do
    post :update_profile
    put :change_password
  end

end
