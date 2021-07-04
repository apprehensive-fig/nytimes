class ArticlesController < ApplicationController
  def index
    @articles = Article.retrieve_article
    p @articles
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :slug)
  end
end
