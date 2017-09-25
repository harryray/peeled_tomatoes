class ItalianStyleController < ApplicationController
  protect_from_forgery with: :exception
  
  def index 
    render html:"whaddup"
  end
  
end
