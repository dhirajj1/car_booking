class SearchController < ApplicationController
  before_action :authenticate_user!
  def index
    @article = Article.ransack(params[:q])
    @articles = @article.result(distinct: true)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash[:success] = "The to-do item was successfully destroyed."
    redirect_to(articles_path)
  end

  def edit
    @article = Article.find(params[:id])
    render :edit
  end  
end
