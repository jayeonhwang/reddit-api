class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render :index
  end
  
  def create
    @article = Article.new(
      user_id: current_user.id,
      title: params[:title],
      body: params[:body]
    )
    if @article.save
      render :show
    else
      render json: {message: you can not post it}
    end
  end

  def show
    @article = Article.find_by(id: params[:id])
    render :show
  end

  def update
    @article = Article.find_by(id: params[:id])
    @article.update(
      id: params[:id] || @article.id,
      title: params[:title] || @article.title,
      body: params[:body] || @article.body
    )
    render :show
  end

  def destroy
    @article = Article.find_by(id: params[:id])
    @article.destroy
    render json: { message: "Article destroyed successfully" }
  end
end
