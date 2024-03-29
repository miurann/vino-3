class QuizzesController < ApplicationController
  layout 'questions_menu', only: %i[show]
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
    @questions = Question.where(region_id: @region.id)
  end
end
