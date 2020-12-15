class PlaygroundsController < ApplicationController
  before_action :set_playground,only: [:show, :edit, :update, :destroy]

  def index

    @q = Playground.ransack(params[:q])
    @playgrounds = @q.result(distinct: true).page(params[:page]).per(6)
  end

  def show
    # binding.pry
    @post = Post.new
    @posts = @playground.posts
  end

  def new
    @playground = Playground.new
  end

  def create
    @playground= current_user.playgrounds.build(playground_params)
    if @playground.save
      flash[:notice] = "Has been playground register."
      redirect_to playground_path(@playground.id)
    else
      flash.now[:notice] = "fails to playground register"
      render :new
    end
  end

  def edit
  end

  def update
    if @playground.update(playground_params)
      redirect_to playground_path(@playground.id), notice: 'Has been edit playground！'
    else
      render :edit
    end
  end

  def destroy
    @playground.destroy
    redirect_to playgrounds_path,notice: 'Playground was successfully destroyed.'
  end

  private

  def set_playground
    @playground = Playground.find(params[:id])
  end

  def playground_params
    params.require(:playground).permit(:name, :address, :opening_at, :closing_at, :price, :breadth, :other, :image, :image_cache, :name_cont)
  end

end
