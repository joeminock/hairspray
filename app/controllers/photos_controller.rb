class PhotosController < ApplicationController
 before_action :authenticate_user!, except: [:show] 

	def destroy
		@photo = Photo.find(params[:id])
		stylist = @photo.stylist	

		@photo.destroy
		@photos = Photo.where(stylist_id: stylist.id)

		respond_to :js
	end
end