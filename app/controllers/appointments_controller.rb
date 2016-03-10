class AppointmentsController < ApplicationController
	before_action :authenticate_user!

	def preload
		stylist = Stylist.find(params[:stylist_id])
		today = Date.today
		appointments = stylist.appointments.where("start_date >= ? OR end_date >= ?", today, today)

		render json: appointments
	end

	def create
		@appointment = current_user.appointments.create(appointment_params)

		redirect_to @appointment.stylist, notice: "Your reservation has been created..."
	end

	private
		def appointment_params
			params.require(:appointment).permit(:start_date, :end_date, :stylist_id)
		end
end