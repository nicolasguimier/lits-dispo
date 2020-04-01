class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	@hospitals = Hospital.geocoded
  	@known_hospitals = Hospital.geocoded.where("free_beds_number > 0").order(free_beds_number: :desc)

  	@pending_hospitals = Hospital.geocoded.where("free_beds_number IS NULL")

    @markers = @hospitals.map do |hospital|
      {
        lat: hospital.latitude,
        lng: hospital.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { hospital: hospital })
      }
    end
  end
end
