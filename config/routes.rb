Rails.application.routes.draw do
  root 'tests#index'

  devise_for :users

  resources :tests do
    resources :questions do
      resources :answers
    end
  end

end
