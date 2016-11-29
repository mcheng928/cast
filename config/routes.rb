Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "events#index"
  # Routes for the Invite_list resource:
  # CREATE
  get "/invite_lists/new", :controller => "invite_lists", :action => "new"
  post "/create_invite_list", :controller => "invite_lists", :action => "create"

  # READ
  get "/invite_lists", :controller => "invite_lists", :action => "index"
  get "/invite_lists/:id", :controller => "invite_lists", :action => "show"

  # UPDATE
  get "/invite_lists/:id/edit", :controller => "invite_lists", :action => "edit"
  post "/update_invite_list/:id", :controller => "invite_lists", :action => "update"

  # DELETE
  get "/delete_invite_list/:id", :controller => "invite_lists", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # Routes for the Voting_board resource:
  # CREATE
  get "/voting_boards/new", :controller => "voting_boards", :action => "new"
  post "/create_voting_board", :controller => "voting_boards", :action => "create"

  # READ
  get "/voting_boards", :controller => "voting_boards", :action => "index"
  get "/voting_boards/:id", :controller => "voting_boards", :action => "show"

  # UPDATE
  get "/voting_boards/:id/edit", :controller => "voting_boards", :action => "edit"
  post "/update_voting_board/:id", :controller => "voting_boards", :action => "update"

  # DELETE
  get "/delete_voting_board/:id", :controller => "voting_boards", :action => "destroy"
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
