Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    root 'posts#index'
  end
end
