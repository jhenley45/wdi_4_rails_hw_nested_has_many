class CommentsController < ApplicationController
	before_action :get_article, only: [:create, :new]
	before_action :get_user, only: [:new, :create]

  def show
  end

  def index
  end

  def create

  	@article.comments << Comment.create!(comment_params)
  	redirect_to user_article_path(@user.id, @article.id)
  end

  def new
  	@comment = Comment.new
  end


  private

  def get_article
		@article = Article.find(params[:article_id])
	end

	def get_user
		@user = User.find(params[:user_id])
	end

	def comment_params
		params.require(:comment).permit(:body, :article_id, :user_id)
	end

end
