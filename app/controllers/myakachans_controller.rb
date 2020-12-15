class MyakachansController < ApplicationController
  before_action :set_myakachan,only: [:show, :edit, :update, :destroy]

  def index
    @myakachans = Myakachan.all
  end

  def show
  end

  def new
    @myakachan = Myakachan.new
  end


  def create
    @myakachan = Myakachan.new(myakachan_params)
    if @myakachan.save
      flash[:notice] = "Register for my baby."
      redirect_to user_path(@myakachan.user_id)
    else
      flash[:notice] = "Failed to register for my baby!"
      @user = User.find(@myakachan.user_id)
      @myakachans = @user.myakachans
      render template: 'users/show' #, :collection => User.find(params[:user_id])
    end
  end

  def edit
  end

  def update
    if @myakachan.update(myakachan_params)
      redirect_to myakachan_path(@myakachan), notice: 'Edited for my baby！'
    else
      render :edit
    end
  end

  def destroy
    @myakachan.destroy
    redirect_to user_path(@current_user),notice: 'Mybaby was successfully destroyed.'
  end

  private

  def set_myakachan
    @myakachan = Myakachan.find(params[:id])
  end

  def myakachan_params
    params.require(:myakachan).permit(:name, :age, :gender, :image, :image_cache, :user_id)
  end

end
