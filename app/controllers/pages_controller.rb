class PagesController < ApplicationController
  def index
  end

  def dashboard
  end

  def create
    Post.create(title: params[:title], image: params[:img_url], content: params[:content])
  end
end
