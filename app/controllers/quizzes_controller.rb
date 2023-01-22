class QuizzesController < ApplicationController
  layout 'questions_menu', only: %i[show]
  def index
  end

  def show
    @region = Region.find(params[:id])
    @questions = Question.includes(wine: :region).where(region: {id: params[:id]})
  end
end
