require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Public Patron"
  end
  
  test "should get idea" do
    get :idea
    assert_response :success
    assert_select "title", "The Big Idea | Public Patron"
  end

  test "should get platform" do
    get :platform
    assert_response :success
    assert_select "title", "How It Works | Public Patron"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "Who We Are | Public Patron"
  end

  test "should get join" do
    get :join
    assert_response :success
    assert_select "title", "Join the Movement | Public Patron"
  end

  test "should get support" do
    get :support
    assert_response :success
    assert_select "title", "Support Us | Public Patron"
  end

end
