class HomeController < ApplicationController
  def index
    @mode = :local
    @filter = :group
    @subject = :sociales
  end
end