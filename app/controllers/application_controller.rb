class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def code_valid?(code)
    return true if code == "1234"

    flash[:alert] = "Problème avec le code. Ce code n'existe pas."
    return false
  end

end
