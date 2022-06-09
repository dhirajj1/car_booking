class ApplicationController < ActionController::Base
  before_action :set_article

  def set_article
    @article = Article.ransack(params[:q])
  end  

  def after_sign_in_path_for(response)
    search_path
  end  
  
  
end
