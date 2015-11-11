Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  scope '(:locale)', locale: /en|nl/ do
    get 'features', to: 'home#features'
    get 'vision', to: 'home#vision'
    get 'thanks', to: 'home#thanks'
    get 'press', to: 'home#press'
    get 'faq', to: 'home#faq'
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
