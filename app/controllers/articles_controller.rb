class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end # -> views -> folder with name of the controller -> template with name of action

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @article = Article.new
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
