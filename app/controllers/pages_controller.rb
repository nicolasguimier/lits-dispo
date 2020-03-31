class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	@hospitals = Hospital.geocoded

    @markers = @hospitals.map do |hospital|
      {
        lat: hospital.latitude,
        lng: hospital.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { hospital: hospital })
      }
    end
  end
end
