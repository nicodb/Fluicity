Rails.application.routes.draw do

  scope '(:locale)', locale: /en/ do
    get 'thanks', to: 'home#thanks'
    resources :users, only: :create
    root to: 'home#index'
    get 'contact', to: 'home#contact'
    get 'wish', to: 'home#wish'
  end

end
