class BlogsController < ApplicationController
  before_action :set_beginning_of_week

  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    Blog.create(blog_parameter)
    redirect_to blogs_path
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blogs_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end
  
  private

  def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time)
  end

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end
end