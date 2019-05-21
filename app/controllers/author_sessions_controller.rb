# frozen_string_literal: true

class AuthorSessionsController < ApplicationController
  def new; end

  def create
    if login(params[:email], params[:password])
      flash.notice = 'Logged in successfully'
      redirect_back_or_to articles_path
    else
      flash.notice = 'Login failed.'
      redirect_to new_author_url
    end
  end

  def destroy
    logout
    flash.notice = 'Logged out!'
    redirect_to articles_path
  end
end
