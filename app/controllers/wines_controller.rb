class WinesController < ApplicationController
  def index
    @wines = Wine.all.includes(:region).order(region_id: :desc)
  end

  def show
    @wine = Wine.find(params[:id])
  end
end
