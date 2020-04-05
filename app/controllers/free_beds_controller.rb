class FreeBedsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
  	@free_bed = FreeBed.new
  	@hospital = Hospital.find(params[:hospital_id])
  	@history = FreeBed.where(hospital_id: params[:hospital_id]).reverse


  	if @hospital.free_beds.count != 0 && @hospital.free_beds.last.number
  		@current_nb_beds = @hospital.free_beds.last.number
  	else
  		@current_nb_beds = "Non défini"
  	end
  end

  def create
    @free_bed = FreeBed.new(free_beds_params)
    @hospital = Hospital.find(params[:hospital_id])
    @free_bed.hospital = @hospital
    if @free_bed.save
      redirect_to hospitals_path
    else
      render :new
    end
  end

  private

  def free_beds_params
    params.require(:free_bed).permit(:number)
  end

end
