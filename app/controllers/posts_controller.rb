class PostsController < ApplicationController
  before_action :set_post,only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Review post successfully!"
      redirect_to playground_path(@post.playground_id)
    else
      flash[:notice] = "Review Failed!"
      @playground =  Playground.find(@post.playground_id)
      @posts = @playground.posts
      render template: 'playgrounds/show'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id), notice: 'Edited the review！'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to playground_path(@post.playground_id),notice: 'Post was successfully destroyed.'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content,:image, :image_cache, :playground_id, :user_id)
  end

end
