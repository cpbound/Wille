class ArticlesController < ApplicationController
  def index
     @articles = policy_scope(Article)
  end

  def show
    @article = Article.find(:id)
  end
end
