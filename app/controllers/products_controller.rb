class ProductsController < ApplicationController

   def index
   end

   def create
     @product = Product.new(params[:product])
     if @product.save
       redirect_to '/products'
     else
       redirect_to '/products'
     end
   end
end
