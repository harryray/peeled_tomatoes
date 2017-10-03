class BuildADuckController < ApplicationController
  def calculate_quote
    # Deal with params
    quote = params[:quote]
    quote = JSON.parse quote
    size = quote["size"]
    material = quote["material"]
    colour = quote["colour"]
    accessories_hat = quote["accessories_hat"]
    accessories_eyewear = quote["accessories_eyewear"]
    accessories_facial_hair = quote["accessories_facial_hair"]
    accessories = "#{accessories_hat}, #{accessories_eyewear}, #{accessories_facial_hair}"
    
    # Calculate price
    @base_price = 5.00
    if "material" == "rubber" then
      @price = @base_price*1
    end
    if "material" == "wood" then
      @price = @base_price*2.50
    end
    if "material" == "plastic" then
      @price = @base_price*0.80
    end
    if "size" == "small" then
     @price = @base_price*1
    end
    if "size" == "medium" then
     @price = @base_price*1.25
    end
    if "size" == "large" then
     @price = @base_price*1.50
    end
    
    quote = ["size": size,"material": material,"colour": colour,"accessories": accessories,"price": @price]
    
    
    render json: quote
  end
end
