class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @mode = :local
    @filter = :group
    @subject = params[:subject_id].try(:to_sym) || :sociales
    @learning_session_form = LearningSessionForm.new
  end
end