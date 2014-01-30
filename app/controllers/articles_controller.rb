class ArticlesController < ApplicationController
	before_action :get_user, only: [:create, :new]

  def show
  	@article = Article.find(params[:id])
  end

  def index
  	if params[:id]
    	@articles = User.find(user_id).articles
		else
    	@articles = Article.all.order(:created_at)
		end
  end

  def create
  	@user.articles << Article.create!(article_params)
  	redirect_to user_path(@user.id)
  end

  def new
  	@article = Article.new
  end

  def edit
	end

	private

	def article_params
		params.require(:article).permit(:title, :body, :user_id)
	end

	def get_user
		@user = User.find(params[:user_id])
	end


end
