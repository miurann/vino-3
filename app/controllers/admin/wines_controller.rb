class Admin::WinesController < Admin::BaseController
  before_action :set_wine, only: %i[show edit update destroy]
  def index
    @wines = Wine.all.includes(:region).order(created_at: :desc)
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
    if @wine.update(wine_params)
      redirect_to admin_wine_path(@wine), notice: t('defaults.message.updated', item: Wine.model_name.human)
    else
      render :edit, notice: t('defaults.message.not_updated', item: Wine.model_name.human)
    end
  end

  def destroy
    @wine.destroy!
    redirect_to admin_wines_path, notice: t('defaults.message.deleted', item: Wine.model_name.human)
  end

  private

  def set_wine
    @wine = Wine.find(params[:id])
  end

  def wine_params
    params.require(:wine).permit(:region_id, :name, :producer, :jpn_name, :category, :color, :price, :sweetness, :acidity, :tannin, :body, :description, grape_variety_ids: [], aroma_ids: [])
  end
end
