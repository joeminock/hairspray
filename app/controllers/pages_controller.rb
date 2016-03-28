class PagesController < ApplicationController
  def home
  	@stylists = Stylist.all
  end

  def search
    
    if params[:search].present? && params[:search].strip != ""
      session[:loc_search] = params[:search]
    end

    arrResult = Array.new

    if session[:loc_search] && session[:loc_search] != ""
      @stylists_address = Stylist.where(active: true).near(session[:loc_search], 5, order: 'distance')
    else
      @stylists_address = Stylist.where(active: true).all
    end

    @search = @stylists_address.ransack(params[:q])
    @stylists = @search.result.shuffle

    @arrStylists = @stylists.to_a

    if (params[:start_time] && params[:end_time] && !params[:start_time].empty? & !params[:end_time].empty?)

      start_time = Date.parse(params[:start_time])
      end_time = Date.parse(params[:end_time])

      @stylists.each do |stylist|

        not_available = stylist.appointments.where(
            "(? <= start_time AND start_time <= ?)
            OR (? <= end_time AND end_time <= ?) 
            OR (start_time < ? AND ? < end_time)",
            start_time, end_time,
            start_time, end_time,
            start_time, end_time
          ).limit(1)

        if not_available.length > 0
          @arrStylists.delete(stylist)  
        end 
      end
    end
  end

  def about
  end

  def media
  end

  def jobs
  end

  def contact
  end

  def legal
  end

  def privacy
  end
end