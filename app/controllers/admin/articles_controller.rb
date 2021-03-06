class Admin::ArticlesController < ApplicationController
  before_action :get_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all.ordered_by_creation_reverse.page params[:page]
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to admin_article_path(@article)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to admin_article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to admin_articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :photo, :displayed)
  end

  def get_article
    @article = Article.find(params[:id])
  end
end
