class ProductsController < ApplicationController

   def index
   end

   def create
     # strong parameter
     #clean_param = params.require(:product).permit(:name,:price)
     @product = Product.new(product_params)
     if @product.save
       redirect_to '/products'
     else
       redirect_to '/products'
     end
   end

   private
   def product_params
     return params.require(:product).permit(:name, :price)
   end
end
