Findtutor::Application.routes.draw do
  
  
  match "auth/:provider/callback" => "admin#oauth"
  
  resources :tutor_locations
  resources :universities
  get 'meetings/joinmeeting'
  get 'meetings/createmeeting'
  post 'meetings/ipn_notification'
  get 'meetings/ipn_notification'
  get 'meetings/canceled_payment_request'
  get 'meetings/completed_payment_request'
  post 'meetings/payment'
  get 'meetings/payment_made'
  post  'tutors/addtutor'
  get 'tutors/addtutor'
  get 'tutors/mgmt'
  get 'tutors/approve'
  get 'subjects_tutors/select'
  
  resources :superadmins

  
  resources :tutor_availabilities
  resources :subjects_tutors

  resources :subjects

  get "admin/login"
  post "admin/login"
  get "admin/logout"


  match 'register' => 'users#register'
  resources :tutors

  resources :users

  resources :meetings

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
  root :to => 'tutors#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
