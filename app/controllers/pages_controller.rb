class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :valeurs, :show_example]

  def admin
  end

  def home
    @articles = Article.where(displayed: true)
  end

  def valeurs
  end
end
