class HospitalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

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
end
