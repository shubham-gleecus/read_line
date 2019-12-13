class ArticlesController < ApplicationController


  before_action only: %i[show edit update destroy]

  # before_action only: %i[new create] do
  #   @article = Article.new
  # end


  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params.require(:article).permit(:auth_name, :blog))
    # @article.auth_name= params[:article][:auth_name]
    # @article.blog= params[:article][:blog]
        
    if @article.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(params.require(:article).permit(:auth_name, :blog))
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  def destroy
   Article.find(params[:id]).destroy
    redirect_to action: 'index'
  end

end
