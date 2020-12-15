class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) && user.admin
      session[:user_id] = user.id
      redirect_to admin_users_path, notice: 'Has been Logout！'
    elsif user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to  playgrounds_path(user.id), notice: 'Has been Login！'
    else
      flash[:danger] = 'Login Failed！'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path , notice: 'Has been logout！'
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
