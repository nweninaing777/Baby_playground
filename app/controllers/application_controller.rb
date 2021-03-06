class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :log_in?

  before_action :current_user
  before_action :current_playground

  private
def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_playground
    @current_playground = params[:id]
  end

  def authenticate_user
    if current_user == nil
      redirect_to root_path
    end
  end

  def admin?
    @user.admin
  end

  def log_in?
    @current_user.present?
  end

end
