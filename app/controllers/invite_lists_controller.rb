class InviteListsController < ApplicationController
  def index
    @q = InviteList.ransack(params[:q])
    @invite_lists = @q.result(:distinct => true).includes(:event, :invitee).page(params[:page]).per(10)

    render("invite_lists/index.html.erb")
  end

  def show
    @invite_list = InviteList.find(params[:id])

    render("invite_lists/show.html.erb")
  end

  def new
    @invite_list = InviteList.new

    render("invite_lists/new.html.erb")
  end

  def create
    @invite_list = InviteList.new

    @invite_list.event_id = params[:event_id]
    @invite_list.invitee_id = params[:invitee_id]

    save_status = @invite_list.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/invite_lists/new", "/create_invite_list"
        redirect_to("/invite_lists")
      else
        redirect_back(:fallback_location => "/", :notice => "Invite list created successfully.")
      end
    else
      render("invite_lists/new.html.erb")
    end
  end

  def edit
    @invite_list = InviteList.find(params[:id])

    render("invite_lists/edit.html.erb")
  end

  def update
    @invite_list = InviteList.find(params[:id])

    @invite_list.event_id = params[:event_id]
    @invite_list.invitee_id = params[:invitee_id]

    save_status = @invite_list.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/invite_lists/#{@invite_list.id}/edit", "/update_invite_list"
        redirect_to("/invite_lists/#{@invite_list.id}", :notice => "Invite list updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Invite list updated successfully.")
      end
    else
      render("invite_lists/edit.html.erb")
    end
  end

  def destroy
    @invite_list = InviteList.find(params[:id])

    @invite_list.destroy

    if URI(request.referer).path == "/invite_lists/#{@invite_list.id}"
      redirect_to("/", :notice => "Invite list deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Invite list deleted.")
    end
  end
end
