class PagesController < ApplicationController
http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only:
:dashboard


  def index
    @posts = Post.ordered_by_date
  end

  def dashboard
  end

  def create
    @post = Post.create(title: params[:title], image: params[:img_url], content: params[:content])
  end
end
