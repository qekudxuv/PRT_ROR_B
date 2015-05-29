class ProductMailer < ApplicationMailer
  def destroy_notify
    mail(to:'kelvin_lin@htc.com', from:'system@htc.com', subject:'Hello, Ruby')
  end
  
end
