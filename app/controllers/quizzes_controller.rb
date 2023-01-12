class QuizzesController < ApplicationController
  def index
  end

  def show
    @region = Region.find(params[:id])
    @questions = Question.includes(wine: :region).where(region: {id: params[:id]})
  end
end
