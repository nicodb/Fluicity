Rails.application.routes.draw do

  scope '(:locale)', locale: /en/ do
    get 'thanks', to: 'home#thanks'
    resources :users, only: :create
    resources :wishes do
      member do
        put 'upvote'
      end
    end
    root to: 'home#index'
    get 'contact', to: 'home#contact'
  end

end
