class AchievementsController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    @choices = question.choices
    choice = @choices.find_by(correct_answer: true)
    if current_user.answered?(choice)
      redirect_to quiz_question_description_path(question_id: params[:question_id], quiz_id: params[:quiz_id])
    else
      current_user.answer(choice)
      redirect_to quiz_question_description_path(question_id: params[:question_id], quiz_id: params[:quiz_id])
    end
  end
end
