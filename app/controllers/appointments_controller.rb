class AppointmentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@appointment = current_user.appointments.create(appointment_params)

		redirect_to @appointment.stylist, notice: "Your Appointment Has Been Created!!!"
	end

	private
		def appointment_params
			params.require(:appointment).permit(:start_date, :end_date, :stylist_id)
		end
end