class PagesController < ApplicationController
  def landing
    @articles = Article.all.limit(6)
  end
end
