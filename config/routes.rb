Nmserverv2::Application.routes.draw do

  get "/storedisheswithoutimg/:id.:format" => "dishes#storeDishesWTImg"
  get "/stories" => "stories#index"
  get "/messages/img/:id" => "messages#showimg"
  get "/dishes/img/:id" => "dishes#showimg"
  get "/stores/img/:number/:id" => "stores#showimg"
  get "/bloggers/img/:id" => "bloggers#showimg"
  get "/storeswithoutimg.:format" =>"stores#getJsonWTImg"
  get "/bloggerswithoutimg.:format" =>"bloggers#getJsonWTImg"
  get "/disheswithoutimg.:format" =>"dishes#getJsonWTImg"
  get "/messageswithoutimg.:format" =>"messages#getJsonWTImg"
  get "/dishes/admin" => "dishes#admin"
  get "/bloggers/admin" => "bloggers#admin"
  get "/stores/admin" => "stores#admin"
  
  resources :messages

  resources :comments

  resources :bloggers

  resources :dishes

  resources :stores


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
  root :to => 'stories#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
