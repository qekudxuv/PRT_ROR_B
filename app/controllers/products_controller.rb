class ProductsController < ApplicationController

   def index
   end

   def create
     # strong parameter
     clean_param = params.require(:product).permit(:name, :price)
     @product = Product.new(clean_param)
     if @product.save
       redirect_to '/products'
     else
       redirect_to '/products'
     end
   end
end
