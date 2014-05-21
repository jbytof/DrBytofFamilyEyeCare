class AppointmentsController < ApplicationController
	def new
	end

	def index
		@appointments = Appointment.all
	end

	def create
		@appointment = Appointment.new(appointment_params)

		@appointment.save
		redirect_to @appointment
	end

	def show
		@appointment = Appointment.find(params[:id])
	end

	private	
		# Never trust parameters from the scary internet, only allow the white list through.		
		def appointment_params
			params.require(:appointment).permit(:first_name, :last_name, :paitent_type, :phone_number, :email, :comments)
		end
end