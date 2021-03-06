Rails.application.routes.draw do

  get '/reports', to: 'reports#index'
  get '/reports/retailer_balances', to: 'reports#retailer_balances'
  get '/reports/all_receipts', to: 'reports#all_receipts'
  get 'reports/user_list', to: 'reports#user_list'
  get '/users/history', to: 'users#history'
  get '/users/cause_list', to: 'users#cause_list'
  get '/users/retailer_list', to: 'users#retailer_list'
  get '/buttons', to: 'home#buttons'
  get '/retailers/register', to: 'retailers#register'

  devise_for :admins
  devise_for :users, :controllers => { :registrations => "user_registrations" }
  resources :transactions
  resources :users
  resources :retailers
  resources :causes
  resources :onboarding
  resources :reports
  resources :process_transactions
  resources :retailer_transactions
  resources :cause_transactions
  resources :rewards_transactions
  resources :user_transactions

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
