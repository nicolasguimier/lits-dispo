class CodesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:submit]
  def submit
    if verify_recaptcha
      if code_valid?(params[:code])
        session[:code] = params[:code]
        redirect_to hospitals_path
      else
        redirect_to root_path
      end
    else
      flash[:alert] = "Error about CATPCHA"
      redirect_to root_path
    end
  end
end
