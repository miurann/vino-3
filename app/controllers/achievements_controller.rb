class AchievementsController < ApplicationController
  def create
    @question = Question.find(3)
    choice = Choice.find(params[:choice_id])
    if current_user.answered?(choice)
      redirect_back fallback_location: @question, success: '正解してます！'
    else
      current_user.correct(choice)
      redirect_back fallback_location: @question, success: '正解！'
    end
  end
end
