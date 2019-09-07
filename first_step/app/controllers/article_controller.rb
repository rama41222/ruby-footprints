class ArticleController < ApplicationController
  before_action :set_article, only: [:edit, :delete]

  def index
    @articles = Article.all
  end

  def edit

  end

  def update

  end

  def delete

  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

end