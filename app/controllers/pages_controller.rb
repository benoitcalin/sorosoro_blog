class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :valeurs, :show_example]

  def admin
  end

  def home
    @articles = Article.where(displayed: true).limit(3).ordered_by_creation_reverse
  end

  def valeurs
  end
end
