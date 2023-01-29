class AchievementsController < ApplicationController
  def create
    @question = Question.find()
    choice = Choice.find(params[:choice_id])
    if current_user.answered?(choice)
      redirect_back fallback_location: @question
    else
      current_user.correct(choice)
      redirect_back fallback_location: @question
    end
  end
end
