class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query]
      @articles = Article.where(displayed: true).search_by_title_and_content(params[:query]).ordered_by_creation_reverse.page params[:page]
    else
      @articles = Article.where(displayed: true).ordered_by_creation_reverse.page params[:page]
    end
  end

  def show
    @article = Article.find(params[:id])
  end
end
