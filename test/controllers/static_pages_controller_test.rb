require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Note - A GrinTech Application"
  end
  
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  
  test "should get home" do
    #get static_pages_home_url
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  
  test "Should get about" do
    #get static_pages_about_url
    get about_path
    assert_response :success
    assert_select "title", "About GrinTECH | #{@base_title}"
  end
  
   test "Should get contact" do
    #get static_pages_contact_url
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
