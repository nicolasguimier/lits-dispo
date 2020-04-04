class HospitalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create, :new]

  def index
		@hospitals = Hospital.geocoded
  	@known_hospitals = Hospital.includes(:free_beds).where.not(free_beds: {id: nil})
  	@pending_hospitals = Hospital.includes(:free_beds).where(free_beds: {id: nil})


    @markers = @hospitals.map do |hospital|
      {
        lat: hospital.latitude,
        lng: hospital.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { hospital: hospital })
      }
    end
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(hospital_params)
    @free_bed = FreeBed.new(number: params[:hospital][:free_beds][:number])
    @free_bed.hospital = @hospital
    if @hospital.save && @free_bed.save
      redirect_to hospitals_path, notice: "L'établissement a été enregistré."
    else
    	raise
      render :new
    end
  end

  private

  def hospital_params
    params.require(:hospital).permit(:name, :contact_infos, :phone, :address, :number)
  end
end
