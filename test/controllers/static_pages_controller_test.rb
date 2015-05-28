require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

   test "can get about page" do
     get :about
     assert_response :success
     assert_select "title", "About"
     assert_select "h1", "about"
   end

   test "can get contact page" do
     get :contact
     assert_response :success
     assert_select "title", "Contact"
     assert_select "h1", "Contact"
   end
   
   test "can get root page" do
     get :index
     assert_response :success
     assert_select "title", "Happy Coding"
   end
end
