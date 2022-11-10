class Admin::WinesController < Admin::BaseController
  before_action :set_wine, only: %i[show edit update destroy]
  def index
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      redirect_to admin_wines_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
  end

  def destroy
  end

  private

  def set_wine
    @wine = Wine.find(params[:id])
  end

  def wine_params
    params.require(:wine).permit(:region_id, :name, :producer, :jpn_name, :category, :color, :price, :sweetness, :acidity, :tannin, :body, :description)
  end
end
