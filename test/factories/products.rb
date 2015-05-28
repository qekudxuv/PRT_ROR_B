# This will guess the User class
FactoryGirl.define do
  #factory :user do
  #  first_name "John"
  #  last_name  "Doe"
  #  admin false
  #end

  # This will use the User class (Admin would have been guessed)
  #factory :admin, class: User do
  #  first_name "Admin"
  #  last_name  "User"
  #  admin      true
  #end
  
  factory :ruby_book, class: Product do
    name "Ruby Book"
    price 100
  end
  factory :php_book, class: Product do
    name "PHP Book"
    price 250
  end
end
