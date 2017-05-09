Rails.application.routes.draw do
  resources :actors do
    resources :roles do
      resources :awards
    end
  end
end
