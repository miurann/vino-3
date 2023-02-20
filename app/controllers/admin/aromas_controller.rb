class Admin::AromasController < Admin::BaseController
  before_action :set_aroma, only: %i[edit update destroy]
  def index
    @aromas = Aroma.all.order(created_at: :desc)
  end

  def new
    @aroma = Aroma.new
  end

  def create
    @aroma = Aroma.new(aroma_params)
    if @aroma.save
      redirect_to admin_aromas_path, success: t('defaults.message.created', item: Aroma.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_created', item: Aroma.model_name.human)
      render :new
    end
  end

  def edit; end

    def update
    if @aroma.update(aroma_params)
      redirect_to admin_aromas_path, success: t('defaults.message.updated', item: Aroma.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_updated', item: Aroma.model_name.human)
      render :edit
    end
  end

  def destroy
    @aroma.destroy!
    redirect_to admin_aromas_path, success: t('defaults.message.deleted', item: Aroma.model_name.human)
  end

  private

  def set_aroma
    @aroma = Aroma.find(params[:id])
  end

  def aroma_params
    params.require(:aroma).permit(:name, :image)
  end
end
