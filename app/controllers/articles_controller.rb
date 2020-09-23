class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = Article.where(displayed: true)
  end

  def show
    @article = Article.find(params[:id])
  end
end
