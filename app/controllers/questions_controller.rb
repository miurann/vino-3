class QuestionsController < ApplicationController
  layout 'questions_menu', only: %i[show]
  def index
  end

  def show
    @question = Question.find(params[:id])
    @choices = @question.choices
    @correct_choice = Choice.includes(:question).find_by(correct_answer: true, question: {id: params[:id]})
    questions_region = @question.wine.region_id
    @questions = Question.includes(:wine).where(wine: {region_id: questions_region})
  end
end
