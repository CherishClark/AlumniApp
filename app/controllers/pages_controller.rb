class PagesController < ApplicationController

  def index
    @posts = Post.all(params[:page]).per(5)
  end
	
end

