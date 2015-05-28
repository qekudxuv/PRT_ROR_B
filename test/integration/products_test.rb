require 'test_helper'

class ProductsTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "can post data to create page" do
    
    #pro = products(:one)
    #puts pro.name
    pro = create(:ruby_book)
    #pro = build(:ruby_book)  不會進資料庫

    c1 = Product.count
    post "/products", product: {name: pro.name, price: pro.price}
    #post "/products", product: {name: "rubyruby", price: 100}  
    assert_redirected_to "/products"
    assert_equal Product.count, c1 + 1
  end
  test "can not add product if name is empty " do
    c1 = Product.count
    post "/products", product: {name: "", price: 100}  
    assert_redirected_to "/products"
    assert_equal Product.count, c1 
  end
  #test "product must have name" do
  #  assert_no_difference 'Product.count' do
  #  post "/products", product: {name: "", description: "hello, ruby"}
  #end
end
