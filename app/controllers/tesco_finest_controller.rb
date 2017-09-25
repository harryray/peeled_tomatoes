class TescoFinestController < ApplicationController
  protect_from_forgery with: :exception
  
  def index 
    render html:"whaddup, boi"
  end
  
end
