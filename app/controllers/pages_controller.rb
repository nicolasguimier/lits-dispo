class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :condition, :mentions]

  def home
  end

  def about
  end

  def condition
  end

  def mentions
  end
end
