Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  scope '(:locale)', locale: /fr|en|nl/ do
    get 'thanks', to: 'home#thanks'
    get 'press', to: 'home#press'
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
