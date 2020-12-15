class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "New User register login!"
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      flash[:notice] = "Register Failed!"
      render :new
    end
  end

  def show
    @myakachan = Myakachan.new
    @myakachans = @user.myakachans
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'I edited my profile！'
    else
      render :edit
    end
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end

  private
 def user_params
    params.require(:user).permit(
      :password_confirmation,
      :password,:name,
      :email,
      :admin_or_not,
      :image,
      :image_cache,
      :profile )
  end

  def set_user
    @user = User.find(params[:id])
  end
end
