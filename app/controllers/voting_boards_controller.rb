class VotingBoardsController < ApplicationController
  def index
    @voting_boards = VotingBoard.all

    render("voting_boards/index.html.erb")
  end

  def show
    @voting_board = VotingBoard.find(params[:id])

    render("voting_boards/show.html.erb")
  end

  def new
    @voting_board = VotingBoard.new

    render("voting_boards/new.html.erb")
  end

  def create
    @voting_board = VotingBoard.new

    @voting_board.venue_id = params[:venue_id]
    @voting_board.event_id = params[:event_id]
    @voting_board.vote = params[:vote]

    save_status = @voting_board.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/voting_boards/new", "/create_voting_board"
        redirect_to("/voting_boards")
      else
        redirect_back(:fallback_location => "/", :notice => "Voting board created successfully.")
      end
    else
      render("voting_boards/new.html.erb")
    end
  end

  def edit
    @voting_board = VotingBoard.find(params[:id])

    render("voting_boards/edit.html.erb")
  end

  def update
    @voting_board = VotingBoard.find(params[:id])

    @voting_board.venue_id = params[:venue_id]
    @voting_board.event_id = params[:event_id]
    @voting_board.vote = params[:vote]

    save_status = @voting_board.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/voting_boards/#{@voting_board.id}/edit", "/update_voting_board"
        redirect_to("/voting_boards/#{@voting_board.id}", :notice => "Voting board updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Voting board updated successfully.")
      end
    else
      render("voting_boards/edit.html.erb")
    end
  end

  def destroy
    @voting_board = VotingBoard.find(params[:id])

    @voting_board.destroy

    if URI(request.referer).path == "/voting_boards/#{@voting_board.id}"
      redirect_to("/", :notice => "Voting board deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Voting board deleted.")
    end
  end
end
