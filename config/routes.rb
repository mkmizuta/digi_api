DigiApi::Application.routes.draw do

  # resources :products, :carts, :items, :orders, defaults: {format: :json}

  defaults format: :json do
    resources :products
    root to: 'products#index'
    get '/carts', to: 'carts#index'
    get '/carts/:id', to: 'carts#show'
    post '/carts', to: 'carts#create'
    post '/items', to: 'items#create'
    get '/items', to: 'items#index'
    put '/items/:id', to: 'items#update'
    delete '/items/:id', to: 'items#destroy'
    post '/orders', to: 'orders#create'
  end

  # defaults format: :json do
  #   get "/products", to: "products#index"
  #   root to: "products#index"
  # end

  # defaults format: :json do
  #   resources: products
  #   get "/cart", to: "cart#show"
  # end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
