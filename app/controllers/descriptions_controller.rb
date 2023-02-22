class DescriptionsController < ApplicationController
  layout 'questions_menu', only: %i[show]
  def show
    @questions = Question.where(region_id: params[:quiz_id])
    @question = Question.find(params[:question_id])
    @correct_choice = @question.choices.find_by(correct_answer: true)
    @region = Region.find(params[:quiz_id])
    @next = Question.where(region_id: @question.region_id).where("id > ?", @question.id).order("id ASC").first
  end
end
