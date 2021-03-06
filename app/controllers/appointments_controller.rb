class AppointmentsController < ApplicationController
	before_action :authenticate_user!

	def preload
		stylist = Stylist.find(params[:stylist_id])
		today = Date.today
		appointments = stylist.appointments.where("start_date >= ? OR end_date >= ?", today, today)

		render json: appointments
	end

	def preview
		start_date = Date.parse(params[:start_date])
		end_date = Date.parse(params[:end_date])

		output = {
			conflict: is_conflict(start_date, end_date)
		}

		render json: output
	end

	def create
		@appointment = current_user.appointments.create(appointment_params)

		redirect_to @appointment.stylist, notice: "Your appointment has been created..."
	end

	def my_appointments
		@my_appointments = current_user.appointments.order(:start_date).reverse
	end

	def client_appointments
		@stylists = current_user.stylists
	end

	private
		def is_conflict(start_date, end_date)
			stylist = Stylist.find(params[:stylist_id])

			check = stylist.appointments.where("? < start_date AND end_date < ?", start_date, end_date)
			check.size > 0? true : false
		end

		def appointment_params
			params.require(:appointment).permit(:start_date, :end_date, :stylist_id, :price)
		end
end