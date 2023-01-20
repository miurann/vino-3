class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find(params[:id])
    @choices = @question.choices
    @correct_choice = Choice.includes(:question).find_by(correct_answer: true, question: {id: params[:id]})
  end
end
