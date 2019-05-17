# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:article][:title]
    @article.save
  end

  def show
    @article = Article.find(params[:id])
  end
end
