class SainsburysOwnController < ApplicationController
  protect_from_forgery with: :exception
  
  def index 
    render html:"whaddup, yo!"
  end
  
end
