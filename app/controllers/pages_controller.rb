class PagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def dashboard
  end

  def create
    @post = Post.create(title: params[:title], image: params[:img_url], content: params[:content])
  end
end
