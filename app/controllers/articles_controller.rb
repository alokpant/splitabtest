# frozen_string_literal: true

# ArticleController
class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @ab_test = ab_test(:view, 'standard', 'control', 'variant')

    render 'show'
  end

  def new
    @article = Article.new
    @article.article_variations.build
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @article.article_variations.build
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url }
    end
  end

  def perform_action
    ab_finished(:view, reset: false)
  end

  private

  def set_article
    @article = Article.find_by_id(params[:id])
  end

  def article_params
    params.require(:article).permit(Article::MODEL_PARAMS)
  end
end
