Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    put :grant_admin, on: :member
    put :revoke_admin, on: :member
  end
end
