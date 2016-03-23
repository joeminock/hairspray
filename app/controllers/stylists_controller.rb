class StylistsController < ApplicationController
  before_action :set_stylist, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show] 

  def index
    @stylists = current_user.stylists
  end

  def show
      @photos = @stylist.photos
  end

  def new
    @stylist = current_user.stylists.build
  end

  def create
    @stylist = current_user.stylists.build(stylist_params)

    if @stylist.save

      if params[:images] 
        params[:images].each do |image|
          @stylist.photos.create(image: image)
        end
      end

      @photos = @stylist.photos
      redirect_to edit_stylist_path(@stylist), notice: "Saved..."
    else
      render :new
    end
  end

  def edit
    if current_user.id == @stylist.user.id
      
      @photos = @stylist.photos
    else
      redirect_to root_path, notice: "You don't have permission."
    end
  end

  def update
    if @stylist.update(stylist_params)

      if params[:images] 
        params[:images].each do |image|
          @stylist.photos.create(image: image)
        end
      end

      redirect_to edit_stylist_path(@stylist), notice: "Updated..."
    else
      render :edit
    end
  end

  private
    def set_stylist
      @stylist = Stylist.find(params[:id])
    end

    def stylist_params
      params.require(:stylist).permit(:stylist_name, :about_the_stylist, :services_provided, :address, :works_in_salon, :works_in_office, :works_in_home, :primary_title, :salon_name, :short_intro, :salon_phone, :facebook_link, :twitter_link, :instagram_link, :snapchat_link, :email_link, :website_link, :price, :active)
    end
end
