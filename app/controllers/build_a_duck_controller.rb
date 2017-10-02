class BuildADuckController < ApplicationController
  def calculate_quote
    size = params[:quote][:size]
    material = params[:quote]["material"]
    colour =params[:quote]["colour"]
    accessories = params[:quote]["accessories"]
    quote = ["size": size,"material": material,"colour": colour,"accessories": accessories]
    render json: quote
  end
end
