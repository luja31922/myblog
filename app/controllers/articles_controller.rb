class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def show
    load_article
  end

  def create
    article = Article.new(article_params)
    if article.save!
      message =  {success: 'Your article was created'}
    else
      message =  {success: article.errors.full_messages.to_sentence}
    end
    redirect_to new_article_path, flash: message
  end

  def update
    load_article
    @article.update(article_params)
    redirect_to edit_article_path(@article), flash: {success: 'Your article was updated'}
  end

  def destroy
    load_article
    @article.destroy
    redirect_to articles_path, flash: {success: 'Your article was deleted'}
  end

  def edit
    load_article
  end


  private

  def article_params
    params.require(:article).permit(:title, :city_id, :experiencia, :fecha, :autor)


  end


  def load_article
    @article = Article.find(params[:id])
  end
end
