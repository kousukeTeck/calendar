class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  private

  def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time)
  end
end