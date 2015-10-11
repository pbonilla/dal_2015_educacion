class LearningSessionsController < ApplicationController

  def create
    @ls = LearningSessionForm.new.submit(learning_sessions_params)
  end

  def learning_sessions_params
    params.require('learning_session_form').permit(:group, :topic, :professor, :subject)
  end
end