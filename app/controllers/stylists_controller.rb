class StylistsController < ApplicationController
  before_action :set_stylist, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @stylists = current_user.stylists
  end

  def show
      
  end

  def new
    @stylist = current_user.stylists.build
  end

  def create
    @stylist = current_user.stylists.build(stylist_params)

    if @stylist.save
      redirect_to @stylist, notice: "Saved..."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @stylist.update(stylist_params)
      redirect_to @stylist, notice: "Updated..."
    else
      render :edit
    end
  end

  private
    def set_room
      @stylist = Stylist.find(params[:id])
    end

    def stylist_params
      params.require(:stylist).permit(:stylist_name, :about_the_stylist, :services_provided, :address, :works_in_salon, :works_in_office, :works_in_home)
      
    end
  end  
end