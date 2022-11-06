class Admin::BaseController < ApplicationController
  #before_action :check_admin
  layout 'admin/layouts/application'

  def user_class
    @user_class ||= AdminUser.to_s.constantize
  end

  private

  #def check_admin
    #redirect_to root_path, unless current_user == admin_user
  #end
end
