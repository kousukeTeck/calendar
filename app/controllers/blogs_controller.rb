class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def new
    @blog = Blog.new
  end
end