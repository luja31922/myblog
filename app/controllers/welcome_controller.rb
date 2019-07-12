class WelcomeController < ApplicationController
  def home
    @articles = Article.all.order('fecha desc').limit(4)
  end

  def admin_panel
  end
end
