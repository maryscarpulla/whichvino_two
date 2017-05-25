Rails.application.routes.draw do
  # Routes for the Mywineslist resource:
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "mywineslist#index"
  # Routes for the My_wine resource:

  # CREATE
  get "/mywineslist/new", :controller => "mywineslist", :action => "new"
  post "/create_mywineslist", :controller => "mywineslist", :action => "create"

  # READ
  get "/mywineslist", :controller => "mywineslist", :action => "index"
  get "/mywineslist/:id", :controller => "mywineslist", :action => "show"

  # UPDATE
  get "/mywineslist/:id/edit", :controller => "mywineslist", :action => "edit"
  post "/update_mywineslist/:id", :controller => "mywineslist", :action => "update"

  # DELETE
  get "/delete_mywineslist/:id", :controller => "mywineslist", :action => "destroy"
  #------------------------------

  # Routes for the Bucket_list_wine resource:
  # CREATE
  get "/bucket_list_wines/new", :controller => "bucket_list_wines", :action => "new"
  post "/create_bucket_list_wine", :controller => "bucket_list_wines", :action => "create"

  # READ
  get "/bucket_list_wines", :controller => "bucket_list_wines", :action => "index"
  get "/bucket_list_wines/:id", :controller => "bucket_list_wines", :action => "show"

  # UPDATE
  get "/bucket_list_wines/:id/edit", :controller => "bucket_list_wines", :action => "edit"
  post "/update_bucket_list_wine/:id", :controller => "bucket_list_wines", :action => "update"

  # DELETE
  get "/delete_bucket_list_wine/:id", :controller => "bucket_list_wines", :action => "destroy"
  #------------------------------


  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  #-----------------------------------------
  #Routes for the API
  get "/winesearch/new",:controller => "wine_search", :action => "wine_search_form"
  get "/search_to_results",:controller => "wine_search", :action => "search_to_results"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
