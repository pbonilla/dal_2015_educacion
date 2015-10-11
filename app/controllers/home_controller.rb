class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @mode = :local
    @filter = :group
    @subject = :sociales
  end
end