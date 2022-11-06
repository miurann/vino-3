class Admin::UserSessionsController < Admin::BaseController
  #skip_before_action :require_login, only: [:new, :create]
  layout 'layouts/admin_login'

  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to admin_root_path, notice: 'Login successful'
    else
      flash.now[:alert] = 'Login failed'
      render :new
    end
  end

  def destroy
    logout
    redirect_to admin_login_path, notice: 'Logged out!'
  end
end
