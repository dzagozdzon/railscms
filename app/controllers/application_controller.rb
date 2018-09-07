class ApplicationController < ActionController::Base
  before_action :getPageNav, :getJumbotronBlocks, :getBlocks  
  protect_from_forgery with: :exception 

  def getPageNav
    @pageNav = Page.where("menu_display = true && is_published = true").order(order: :asc)
  end 

  def getJumbotronBlocks
    @jumbotron = Block.where("position = 'jumbotron'")
  end

  def getBlocks
    @blocks = Block.where("position = 'block'").order(order: :asc)
  end
end
