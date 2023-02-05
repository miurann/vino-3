class DescriptionsController < ApplicationController
  layout 'questions_menu', only: %i[show]
  def show
    @questions = Question.where(region_id: params[:quiz_id])
    @question = Question.find(params[:question_id])
  end
end
