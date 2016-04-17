class HomeController < ApplicationController
  def index
  end
  
  def write
    
    @email = params[:email]
    @title = params[:title]
    @content = params[:content]
    
  end
end
