class MywineslistController < ApplicationController

  # before_action :current_user_must_be_my_wines_list_user, :only => [:show, :edit, :update, :destroy]

  def current_user_must_be_my_wines_list_user
    mywineslist = Mywineslist.find(params[:id])

    unless current_user == mywineslist.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @mywineslist = Mywineslist.all
    #
    # @q = Mywineslist.ransack(params[:q])
    #   @wines = @q.result(:distinct => true).includes(:my_wines).page(params[:page]).per(10)


    render("mywineslist/index.html.erb")
  end

  def show
    @mywineslist = Mywineslist.find(params[:id])

    render("mywineslist/show.html.erb")
  end

  def new
    @mywineslist = Mywineslist.new

    render("mywineslist/new.html.erb")
  end

  def create
    @mywineslist = Mywineslist.new

    @mywineslist.winename = params[:winename]
    @mywineslist.year = params[:year]
    @mywineslist.price = params[:price]
    @mywineslist.varietal = params[:varietal]
    @mywineslist.winery = params[:winery]
    @mywineslist.bucketlist = params[:bucketlist]
    @mywineslist.image_id = params[:image_id]

    save_status = @mywineslist.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/mywineslist/new", "/create_mywineslist"
        redirect_to("/mywineslist")
      else
        redirect_back(:fallback_location => "/", :notice => "Mywineslist created successfully.")
      end
    else
      render("mywineslist/new.html.erb")
    end
  end

  def edit
    @mywineslist = Mywineslist.find(params[:id])

    render("mywineslist/edit.html.erb")
  end

  def update
    @mywineslist = Mywineslist.find(params[:id])

    @mywineslist.winename = params[:winename]
    @mywineslist.year = params[:year]
    @mywineslist.price = params[:price]
    @mywineslist.varietal = params[:varietal]
    @mywineslist.winery = params[:winery]
    @mywineslist.bucketlist = params[:bucketlist]
    @mywineslist.image_id = params[:image_id]

    save_status = @mywineslist.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/mywineslist/#{@mywineslist.id}/edit", "/update_mywineslist"
        redirect_to("/mywineslist/#{@mywineslist.id}", :notice => "Mywineslist updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Mywineslist updated successfully.")
      end
    else
      render("mywineslist/edit.html.erb")
    end
  end

  def destroy
    @mywineslist = Mywineslist.find(params[:id])

    @mywineslist.destroy

    if URI(request.referer).path == "/mywineslist/#{@mywineslist.id}"
      redirect_to("/", :notice => "Mywineslist deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Mywineslist deleted.")
    end
  end
end
