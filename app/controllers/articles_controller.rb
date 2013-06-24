class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.json
  def index
    if(params[:category] == nil)
      @articles = Article.order('created_at DESC').all
      @category = 'All' #as long as the content is not a real category
    else
      @articles = Article.order('created_at DESC').find_all_by_category(params[:category])
      @category = params[:category]
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end
end
