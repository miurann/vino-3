class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find(params[:id])
    @choices = @question.choices
  end
end
