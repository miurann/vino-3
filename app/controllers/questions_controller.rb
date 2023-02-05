class QuestionsController < ApplicationController
  layout 'questions_menu', only: %i[show]
  def index
  end

  def show
    @questions = Question.where(region_id: params[:quiz_id])
    @question = Question.find(params[:id])
    @choices = @question.choices
    @correct_choice = @choices.find_by(correct_answer: true)
  end
end
