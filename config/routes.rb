Rails.application.routes.draw do
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

  # Routes for the Varietal resource:
  # CREATE
  get "/varietals/new", :controller => "varietals", :action => "new"
  post "/create_varietal", :controller => "varietals", :action => "create"

  # READ
  get "/varietals", :controller => "varietals", :action => "index"
  get "/varietals/:id", :controller => "varietals", :action => "show"

  # UPDATE
  get "/varietals/:id/edit", :controller => "varietals", :action => "edit"
  post "/update_varietal/:id", :controller => "varietals", :action => "update"

  # DELETE
  get "/delete_varietal/:id", :controller => "varietals", :action => "destroy"
  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "wines#index"
  # Routes for the My_wine resource:
  # CREATE
  get "/my_wines/new", :controller => "my_wines", :action => "new"
  post "/create_my_wine", :controller => "my_wines", :action => "create"

  # READ
  get "/my_wines", :controller => "my_wines", :action => "index"
  get "/my_wines/:id", :controller => "my_wines", :action => "show"

  # UPDATE
  get "/my_wines/:id/edit", :controller => "my_wines", :action => "edit"
  post "/update_my_wine/:id", :controller => "my_wines", :action => "update"

  # DELETE
  get "/delete_my_wine/:id", :controller => "my_wines", :action => "destroy"
  #------------------------------

  # Routes for the Wine resource:
  # CREATE
  get "/wines/new", :controller => "wines", :action => "new"
  post "/create_wine", :controller => "wines", :action => "create"

  # READ
  get "/wines", :controller => "wines", :action => "index"
  get "/wines/:id", :controller => "wines", :action => "show"

  # UPDATE
  get "/wines/:id/edit", :controller => "wines", :action => "edit"
  post "/update_wine/:id", :controller => "wines", :action => "update"

  # DELETE
  get "/delete_wine/:id", :controller => "wines", :action => "destroy"
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
