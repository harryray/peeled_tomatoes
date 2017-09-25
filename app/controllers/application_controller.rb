class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
def index
  #Display the view at /app/views/application/index.html.erb
end

def show
   #Show code
end
  
end
