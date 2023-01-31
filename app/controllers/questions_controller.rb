class QuestionsController < ApplicationController
  layout 'questions_menu', only: %i[show]
  def index
  end

  def show
    @questions = Question.where(region_id: params[:quiz_id])
    @question = Question.find(params[:id])
    @choices = @question.choices
    @correct_choice = Choice.includes(:question).find_by(correct_answer: true, question: {id: params[:id]})
    questions_region = @question.wine.region_id

  end
end
