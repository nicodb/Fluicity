Rails.application.routes.draw do

  scope '(:locale)', locale: /en/ do
    get 'thanks', to: 'home#thanks'
    resources :users, only: :create
    root to: 'home#index'
  end

end
