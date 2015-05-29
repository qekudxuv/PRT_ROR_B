class ProductMailer < ApplicationMailer
  def destroy_notify(product)
    @del_prduct = product
    mail(to:'kelvin_lin@htc.com', from:'system@htc.com', subject:'Hello, Ruby')
  end
  
end
