class ArticlesController < ApplicationController
	before_action :get_user, only: [:create, :new, :edit, :show]


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
  	@article = Article.find(params[:id])
	end

	def update
		@article = Article.update(params[:id], article_params)
    @article.save
    # An alternative method... this will also save the update and return true if it worked.
    # @bookmark.update_attributes(bookmark_params)
    redirect_to user_article_path
	end

	private

	def article_params
		params.require(:article).permit(:title, :body, :user_id)
	end

	def get_user
		@user = User.find(params[:user_id])
	end


end
