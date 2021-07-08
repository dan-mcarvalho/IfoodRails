Rails.application.routes.draw do

  post 'auth/login'                , to: 'auth#login'
  post 'auth/signup'               , to: 'auth#signup'
  #Order routes
  put 'order/add_item/:id'         , to: 'order#add_item'
  put 'order/remove_item'          , to: 'order#remove_item'
  delete 'order/clear_cart'        , to: 'order#clear_cart'
  get 'order/total_price'          , to: 'order#total_price'

  #Cart routes
  #get 'cart/total_price/:id'      , to: 'cart#total_price'
  #put 'cart/add_item/:id'         , to: 'cart#add_item'
  post 'cart/create_cart'          , to: 'cart#create_cart'
  #put 'cart/remove_item'          , to: 'cart#remove_item'
  get 'cart/list_items/:id'        , to: 'cart#list_items'
  #put 'cart/clear_cart'           , to: 'cart#clear_cart'
  get 'cart/user/:id'              , to: 'cart#user_info'
  get 'cart/restaurant/:id'        , to: 'cart#restaurant_info'
  get 'cart/show_status/:id'       , to: 'cart#show_status'

  #Deliveryman routes
  post 'deliveryman/create'         , to: 'deliveryman#create'
  #post 'deliveryman/add_vehicle'   , to: 'deliveryman#add_vehicle'
  #post 'deliveryman/add_license'   , to: 'deliveryman#add_license'
  put 'deliveryman/finish_order'    , to: 'deliveryman#finish_order'
  put 'deliveryman/accept_order'    , to: 'deliveryman#accept_order'
  put 'deliveryman/:id'             , to: 'deliveryman#update'
  delete 'deliveryman/:id'          , to: 'deliveryman#delete'

  #Products routes
  post 'product'          , to: 'product#create'
  put 'product/:id'       , to: 'product#update'
  delete 'product/:id'    , to: 'product#destroy'
  get 'product/:id'       , to: 'product#show_info'

  #Restaurant_owner routes
  put 'restaurant_owner/change_order_status/:order_id'       , to: 'restaurant_owner#change_order_status'
  put 'restaurant_owner/update_product/:product_id'         , to: 'restaurant_owner#update_product'
  post 'restaurant_owner/create_restaurant'                 , to: 'restaurant_owner#create_restaurant'
  put 'restaurant_owner/set_stock/:restaurant_id'           , to: 'restaurant_owner#set_stock'
  get 'restaurant_owner/show_stock/:restaurant_id'          , to: 'restaurant_owner#show_stock'

  #Admin routes
  post 'admin/allow_deliveryman/:deliveryman_id'     , to: 'admin#allow_deliveryman'
  post 'admin/register_rest_owner'                   , to: 'admin#register_rest_owner'
  get 'admin/list_users'                             , to: 'admin#list_users'
  put 'admin/update'                                 , to: 'admin#update'

  #User routes
  post 'user/create'              , to: 'user#create'
  put 'user/:id'                  , to: 'user#update'
  delete 'user/:id'               , to: 'user#destroy'
  get 'user/list_restaurants'     , to: 'user#list_restaurants'
  get 'user/last_orders'          , to: 'user#last_orders'
  post 'user/register'            , to: 'user#register'
     
  #Restaurant routes
  post 'restaurant/create'                             , to: 'restaurant#create'
  get 'restaurant/most_ordered_product/:restaurant_id' , to: 'restaurant#most_ordered_product'
  get 'restaurant/:restaurant_id'                      , to: 'restaurant#show_info'
  get 'restaurant/total_sale_value/:restaurant_id'     , to: 'restaurant#total_sale_value'
  get 'restaurant/restaurant_rating/:restaurant_id'    , to: 'restaurant#restaurant_rating'
  get 'restaurant/best_clients/:restaurant_id'         , to: 'restaurant#best_clients'
end
