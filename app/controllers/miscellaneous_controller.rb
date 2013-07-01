class MiscellaneousController < ApplicationController
  def about
  end
  
  def sitemap
    @articles = Article.all
    respond_to do |format|
      format.xml
    end
  end
end
