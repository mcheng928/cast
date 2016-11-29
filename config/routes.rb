Rails.application.routes.draw do
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
