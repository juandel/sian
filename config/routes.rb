Sian::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  root to: 'pages#home'
  get 'about_us' => 'pages#about_us'
  get 'terms_of_service' => 'pages#terms_of_service'
  get 'privacy_policy' => 'pages#privacy_policy'
  # get 'contact_us' => 'pages#contact_us'

  get 'home_en' => 'pages#home_en'
  get 'about_us_en' => 'pages#about_us_en'
  #get 'contact_us_en' => 'pages#contact_us_en'
  
  resources :properties, only: [:index, :show, :create]
  resources :properties_en, only: [:index, :show, :create]

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  
  match 'contact_en' => 'contact_en#new', :as => 'contact_en', :via => :get
  match 'contact_en' => 'contact_en#create', :as => 'contact_en', :via => :post


  match 'newsletters' => 'newsletters#create', :as => 'newsletters', :via => :post
  match 'newsletters_en' => 'newsletters_en#create', :as => 'newsletters_en', :via => :post
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
