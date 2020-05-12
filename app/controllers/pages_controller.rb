class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :content]

  def home
    @articles = Article.all
  end

  def about
  end

  def content
  end
end
