class ArticlesController < ApplicationController
  def show
  end

  def index
  	if params[:id]
    	@articles = User.find(user_id).articles
		else
    	@articles = Article.all
		end
  end

  def create
  end

  def new
  end

  def edit
	end
end
